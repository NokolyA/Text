Switch (config) #hostname S1

S1 (config)#interface vlan 1

S1(config-if)#ip address 192.168.1.11 255.255.255.0

S1(config-if)#no shutdown

S1 (config)#line console 0

S1 (config-line)#password cisco

S1(config-line)#login

S1(config-line)#line vty 0 15

S1 (config-line)#pass cisco

S1 (config-line)#login

$1 (config-line)#exit

S1(config)#enable secret class
