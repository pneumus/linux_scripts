# How to Pair an Esperanza EGG109K on Arch Linux ( PS3 Gamepad )

1. Connect the controller via USB
2. Start bluetoothctl
3. Press the P3 button
4. Type "scan on"
5. The name will be "Gamepad" and the MAC '98:B6:55:07:A3:4A'
6. Type "connect 98:B6:55:07:A3:4A"
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
