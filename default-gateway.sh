#router quagga 1
sudo docker exec --privileged tp6_redes_r1_1 ip route del default
sudo docker exec --privileged tp6_redes_r1_1 ip route add default via 192.168.0.2

#root-dns
 docker exec --privileged tp6_redes_root-dns_1 ip route del default
 docker exec --privileged tp6_redes_root-dns_1 ip route add default via 192.168.2.10

#host
sudo docker exec --privileged tp6_redes_host1_1 ip route del default
sudo docker exec --privileged tp6_redes_host1_1 ip route add default via 192.168.3.10

#crear macvlan
#sudo docker network create -d macvlan  --ipv6 --subnet=2001:FFFF::/64 --subnet=192.168.0.0/24   -o parent=enp0s10 pub_net 

# docker network create -d macvlan \
#   --subnet=192.168.0.0/24 \
#   -o parent=enp0s10 pub_net \
#   --ipv6