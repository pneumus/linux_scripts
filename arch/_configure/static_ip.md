# Configure Static IP Address on Linux

&nbsp;&nbsp;
##### List Network Adapters
```sh
nmcli connection show
```
&nbsp;&nbsp;
##### Example Output - Copy the UUID of the desired device
```sh
NAME      UUID                                  TYPE      DEVICE 
wired     fa19249d-d349-37ca-b115-b6a7b4fb8639  ethernet  enp3s0 
wireless  855ecace-1f68-46f3-99eb-c18dd26d4636  wifi      --    
```
&nbsp;&nbsp;
##### 
```sh
nmcli con modify fa19249d-d349-37ca-b115-b6a7b4fb8639 ipv4.addresses 192.168.1.25/24
```
