


Nastavení LXC kontejneru
```
# Template used to create this container: /usr/share/lxc/templates/lxc-download
# Parameters passed to the template: --dist Ubuntu --release Focal --arch armv7l --server repo.turris.cz/lxc --no-validate
# For additional config options, please look at lxc.container.conf(5)

# Uncomment the following line to support nesting containers:
#lxc.include = /usr/share/lxc/config/nesting.conf
# (Be aware this has security implications)

# Some workarounds
# Template to generate fixed MAC address

# Distribution configuration
lxc.arch = armv7l

# Container specific configuration
lxc.include = /usr/share/lxc/config/common.conf
lxc.hook.start-host = /usr/share/lxc/hooks/systemd-workaround
lxc.rootfs.path = btrfs:/srv/lxc/TF-R2_server/rootfs
lxc.uts.name = TF-R2_server

# Network configuration
lxc.net.0.type = veth
lxc.net.0.link = br-lan
lxc.net.0.flags = up
lxc.net.0.name = eth0
lxc.net.0.hwaddr = a2:e2:d9:8b:64:11

# Network configuration
lxc.net.1.type = veth
lxc.net.1.link = br-lan
lxc.net.1.flags = up
lxc.net.1.name = eth1
lxc.net.1.hwaddr = a2:e2:d9:8b:64:12



lxc.mount.entry = /dev/bus/usb dev/bus/usb none bind,optional,create=dir 0 0
lxc.cgroup.devices.allow = c 188:0 rwm

# lxc.group.devices.allow = c 166:* rwm
# lxc.mount.entry = /dev/ttyACM0 dev/ttyACM0  none bind,optional,create=file 0 0
# lxc.mount.entry = /dev/ttyACM1 dev/ttyACM1  none bind,optional,create=file 0 0
# lxc.mount.entry = /dev/ttyACM2 dev/ttyACM2  none bind,optional,create=file 0 0

lxc.mount.entry = /dev/ttyUSB0 dev/ttyUSB0  none bind,optional,create=file,umask=000 0 0
# lxc.mount.entry = /dev/ttyUSB1 dev/ttyUSB1  none bind,optional,create=file 0 0
# lxc.mount.entry = /dev/ttyUSB2 dev/ttyUSB2  none bind,optional,create=file 0 0
```