# Configure Static IP Address on Linux

&nbsp;
##### List Network Adapters
```sh
nmcli connection show
```
&nbsp;
##### Example Output - Copy the UUID of the desired device
```sh
NAME      UUID                                  TYPE      DEVICE 
wired     fa19249d-d349-37ca-b115-b6a7b4fb8639  ethernet  enp3s0 
wireless  855ecace-1f68-46f3-99eb-c18dd26d4636  wifi      --    
```
&nbsp;
##### IP address
```sh
nmcli con modify fa19249d-d349-37ca-b115-b6a7b4fb8639 ipv4.addresses 192.168.1.25/24
```
&nbsp;
##### Gateway
```sh
sudo nmcli con modify fa19249d-d349-37ca-b115-b6a7b4fb8639 ipv4.gateway 192.168.1.1
```
&nbsp;
##### DNS
```sh
sudo nmcli con modify fa19249d-d349-37ca-b115-b6a7b4fb8639 ipv4.dns "192.168.1.1"
```
&nbsp;
##### Method
```sh
sudo nmcli con modify fa19249d-d349-37ca-b115-b6a7b4fb8639 ipv4.method manual
```
&nbsp;
##### Activate connection
```sh
sudo nmcli connection up fa19249d-d349-37ca-b115-b6a7b4fb8639
```
&nbsp;
##### Check the generated config file
```sh
sudo vi /etc/NetworkManager/system-connections/wired.nmconnection
```
