# How to Pair an Esperanza EGG109K on Arch Linux ( PS3 Gamepad )

1. Start bluetoothctl
2. Press the P3 button longer than 5 sec ( LED will be blinking double speed )
3. Type "bluetoothctl scan on"
5. The name will be "Gamepad" and the MAC '98:B6:55:07:A3:4A' or '98:B6:90:90:39:37'
6. Type "bluetoothctl connect 98:B6:55:07:A3:4A"
7. The following response is correct:

    [bluetooth]# connect 98:B6:55:07:A3:4A  
    Attempting to connect to 98:B6:55:07:A3:4A  
    [CHG] Device 98:B6:55:07:A3:4A Connected: yes  
    [DEL] Device 45:DA:D1:5B:5F:D2 45-DA-D1-5B-5F-D2  
    [CHG] Device 98:B6:55:07:A3:4A Modalias: usb:v1949p0402d011B  
    [CHG] Device 98:B6:55:07:A3:4A UUIDs: 00001124-0000-1000-8000-00805f9b34fb  
    [CHG] Device 98:B6:55:07:A3:4A UUIDs: 00001200-0000-1000-8000-00805f9b34fb  
    [CHG] Device 98:B6:55:07:A3:4A ServicesResolved: yes  
    [CHG] Device 98:B6:55:07:A3:4A WakeAllowed: yes  
    [CHG] Device 98:B6:55:07:A3:4A Paired: yes  

8. Connected ( LED is turned on at a channel number )
