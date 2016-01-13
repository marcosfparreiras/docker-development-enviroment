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

# Installing RVM, Ruby and Bundler
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
    && \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"
