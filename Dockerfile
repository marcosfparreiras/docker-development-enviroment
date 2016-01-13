FROM ubuntu:14.04

# Updating
RUN apt-get update

# Installing essential
RUN apt-get install -y build-essential
RUN apt-get install -y wget vim git curl

# Installing MySQL client
RUN apt-get install -y mysql-client

# Installing Redis client
RUN wget http://download.redis.io/redis-stable.tar.gz \
    && tar xvzf redis-stable.tar.gz \
    && cd redis-stable \
    && make \
    && make install
