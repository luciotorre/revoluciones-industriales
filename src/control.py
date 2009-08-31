import sys
import time

import usb


VENDOR = 0x16c0
DEVICE = 0x05dc

def find_usb(vendor, product):
    devices = []
    for bus in usb.busses():
        for device in bus.devices:
            if device.idVendor == vendor and device.idProduct == product:
                devices.append(device)
    return devices

def read_debug(handle, buffsize=128):
    alldata = []
    while True:
        data = handle.controlMsg(usb.TYPE_VENDOR | usb.RECIP_DEVICE | usb.ENDPOINT_IN, 1, 8, 0, 0)
        if not data:
            break

        alldata.extend(data)
        if len(alldata) > buffsize:
            break

    return "".join(chr(c) for c in alldata)

def get_device(interval=0.1):
    device = None
    while device is None:
        device_list = find_usb(VENDOR, DEVICE)
        if device_list:
            device = device_list[0]
        else:
            time.sleep(interval)
    return device

device = get_device()
handle = device.open()
while True:
    try:
        handle.interruptRead(usb.ENDPOINT_IN | 1, 8, 10*1000)
    except usb.USBError, e:
        print "E", e
        if e.args == ('No error',):
            pass
        else:
            device = get_device()
            handle = device.open()
    else:
        try:
            while True:
                data = read_debug(handle)
                if not data:
                    break
                sys.stdout.write(data)
                sys.stdout.flush()
        except usb.USBError:
            pass
