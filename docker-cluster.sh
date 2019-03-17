
#!bin/bash
clear
echo "Creating the cluster ...."


# connection ssh to the host where we want to create a cluster.
docker-machine ssh 192.168.101.10

# node manager
docker swarm init --advertise-addr 192.168.101.10
MANAGER_TOKEN=$(docker swarm join-token -q manager)
WORKER_TOKEN=$(docker swarm join-token -q worker)


# node worker1
docker swarm join --token $WORKER_TOKEN --advertise-addr 192.168.101.10:2377


# node worker2
docker swarm join --token $WORKER_TOKEN --advertise-addr 192.168.101.10:2377

# node worker3
docker swarm join --token $WORKER_TOKEN --advertise-addr 192.168.101.10:2377

echo "Cluster created ...."