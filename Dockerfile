FROM ubuntu:14.04

# Updating
RUN apt-get update

# Installing essential
RUN apt-get install -y build-essential
RUN apt-get install -y wget vim git curl

# Installing MySQL client
RUN apt-get install -y mysql-client
