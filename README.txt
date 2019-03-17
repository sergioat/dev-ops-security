README

# INSTRUCCIONS TO RUN THE ENVIRONMENT

chmod u+x cluster.sh
./cluster.sh

# To create the swarm (cluster)
$ docker swarm init       (1 node manager and 3 nodes workers)

# To run the Full Stack 
$ docker stack deploy -c docker-compose.yml myLab
