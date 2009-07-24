import dbus
#from dbus.mainloop.glib import DBusGMainLoop
#dbus_loop = DBusGMainLoop()
system_bus = dbus.SessionBus()

hal_manager = system_bus.get_object('org.freedesktop.Hal',
                       '/org/freedesktop/Hal/Manager')
#print hal_manager.FindDeviceByCapability("input.mouse")
hal_manager_iface = dbus.Interface(hal_manager,
    dbus_interface='org.freedesktop.Hal.Manager')

print hal_manager_iface.GetAllDevices()
def handler(*args, **kwargs):
    print "called". args, kwargs
hal_manager_iface.connect_to_signal("DeviceAdded", handler)


import gobject

loop = gobject.MainLoop()
loop.run()
