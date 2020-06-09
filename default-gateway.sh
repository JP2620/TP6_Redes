#router quagga 1
sudo docker exec --privileged tp6redes_r1_1 ip route del default
sudo docker exec --privileged tp6redes_r1_1 ip route add default via 192.168.1.2

#root-dns
 docker exec --privileged tp6redes_root-dns_1 ip route del default
 docker exec --privileged tp6redes_root-dns_1 ip route add default via 192.168.2.10

#host
sudo docker exec --privileged tp6redes_host1_1 ip route del default
sudo docker exec --privileged tp6redes_host1_1 ip route add default via 192.168.3.10
