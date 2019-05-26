Fingerprint
--
Requirements are installed, pam is setup. 
X1 Carbon Gen6 fingerprint sensor is not supported on Linux. There are and will be no official drivers. 
There is a community-project to reverse the sensor and write a driver for it: https://github.com/nmikhailov/Validity90
This project is currently not fully featured.

NFC
-- 
Will be ignored as it is not yet supported

Camera
---
Camera is supported out of the box

Trackpoint
---
Reconnect of bus is needed after sleep:
```
echo -n "none" | sudo tee /sys/bus/serio/devices/serio1/drvctl
echo -n "reconnect" | sudo tee /sys/bus/serio/devices/serio1/drvctl 
```

Todo: Update libinput to prevent trackpoint hiccups


More info on supported hardware can be found at https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X1_Carbon_(Gen_6)