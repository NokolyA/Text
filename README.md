Switch (config) #hostname S2

S2 (config)#interface vlan 1

S2 (config-if)#ip address 192.168.1.12 255.255.255.0

S2 (config-if)#no shutdown

S2 (config)#line console 0

S2 (config-line)#password cisco

S2 (config-line)#login

S2 (config-line)#line vty 0 15

S2 (config-line)#pass cisco

S2 (config-line)#login

S2 (config-line)#exit

S2 (config)#enable secret class
