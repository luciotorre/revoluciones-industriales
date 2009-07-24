#!/usr/bin/env python

import usb
import time


busses = usb.busses()

for bus in busses:
  devices = bus.devices
  for dev in devices:
    print "Device:", dev.filename
    handle = dev.open()

    ip = handle.getString(dev.iProduct, 100)
    if ip != "USB Optical Mouse":
        continue
    print "iProduct",ip
    print "iManufacturer", handle.getString(dev.iManufacturer, 100)
    print "  Device class:",dev.deviceClass
    print "  Device sub class:",dev.deviceSubClass
    print "  Device protocol:",dev.deviceProtocol
    print "  Max packet size:",dev.maxPacketSize
    print "  idVendor:",dev.idVendor
    print "  idProduct:",dev.idProduct
    print "  Device Version:",dev.deviceVersion
    for config in dev.configurations:
      print "  Configuration:", config.value
      print "    Total length:", config.totalLength
      print "    selfPowered:", config.selfPowered
      print "    remoteWakeup:", config.remoteWakeup
      print "    maxPower:", config.maxPower
      for intf in config.interfaces:
        print "    Interface:",intf[0].interfaceNumber
        for alt in intf:
          print "    Alternate Setting:",alt.alternateSetting
          print "      Interface class:",alt.interfaceClass
          print "      Interface sub class:",alt.interfaceSubClass
          print "      Interface protocol:",alt.interfaceProtocol
          for ep in alt.endpoints:
            for i in range(100):
                print handle.bulkRead(ep.address, 1)
            print "      Endpoint:",hex(ep.address)
            print "        Type:",ep.type
            print "        Max packet size:",ep.maxPacketSize
            print "        Interval:",ep.interval
