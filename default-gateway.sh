#macvlan
sudo docker network create -d macvlan  --ipv6 --subnet=2001:FFFF::/64 --subnet=192.168.1.0/24   -o parent=enp0s8 pub_net 
sudo docker network connect pub_net tp6redes_r1_1

#root-dns
 docker exec --privileged tp6redes_root-dns_1 ip route del default
 docker exec --privileged tp6redes_root-dns_1 ip route add default via 192.168.2.10

#host
sudo docker exec --privileged tp6redes_host1_1 ip route del default
sudo docker exec --privileged tp6redes_host1_1 ip route add default via 192.168.3.10
sudo docker exec --privileged tp6redes_host1_1 ip -6 route del default 
sudo docker exec --privileged tp6redes_host1_1 ip -6 route add default via 2001:BBBB::10

#router quagga 1
sudo docker exec --privileged tp6redes_r1_1 ip route del default
sudo docker exec --privileged tp6redes_r1_1 ip route add default via 192.168.1.2
sudo docker exec --privileged tp6redes_r1_1 ip -6 route del default
#sudo docker exec --privileged tp6redes_r1_1 ip -6 route add default via 2001:FFFF::5

#agregar ip address
#VM con kubernetes: 
#sudo ip -6 address add 2000:ffff::5/64 dev enp0s8
#sudo ip route add 2001:bbbb::/64 via 2001:ffff::2 dev enp0s8
#sudo ip route add 192.168.3.0/24 via 192.168.1.2 dev enp0s8
