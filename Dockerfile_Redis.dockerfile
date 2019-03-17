FROM ubuntu:14.0
RUN apt-get update 
RUN apt-get install redis-server

# Listening port
EXPOSE 6379
CMD ["redis-server"]