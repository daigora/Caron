FROM debian:stretch-slim

MAINTAINER "Diego Alejandro Rodriguez Ayala <diego.magno120@gmail.com>"

# Environment variable
ENV DISTRO stretch
ENV NODE_VERSION node_10.x
ENV PG_VERSION 10
ENV FRONT /usr/share/nginx/html
ENV BACK /node/caron

# Install Base-Dev
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y \
      vim \
      curl \
      gnupg \
      apt-transport-https \
      ca-certificates && \
      rm -rf /var/lib/apt/lists/*

# Repositorys
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ $DISTRO-pgdg main" >> /etc/apt/sources.list.d/postgresql.list && \
    curl -sSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    echo "deb https://deb.nodesource.com/$NODE_VERSION $DISTRO main" >> /etc/apt/sources.list.d/nodesource.list && \
    echo "deb-src https://deb.nodesource.com/$NODE_VERSION $DISTRO main" >> /etc/apt/sources.list.d/nodesource.list && \
    curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo "deb http://nginx.org/packages/mainline/debian/ $DISTRO nginx" >> /etc/apt/sources.list.d/nginx.list && \
    echo "deb-src http://nginx.org/packages/mainline/debian/ $DISTRO nginx" >> /etc/apt/sources.list.d/nginx.list && \
    curl -sSL https://nginx.org/keys/nginx_signing.key | apt-key add - && \
    apt-get update

# Install Core
RUN apt-get install --no-install-recommends --no-install-suggests -y \
      postgresql-$PG_VERSION \
      nginx \
      nodejs && \
      rm -rf /var/lib/apt/lists/* && \
      rm -rf $FRONT/* # Remove default nginx front-end

# Front-end
COPY ./Front-End/www/ $FRONT/

# Back-end
COPY ./Back-End/ $BACK/

# Data Base
COPY ./Modelado_de_BD/CARON_TOTAL.sql /script.sql

# Port Ngnix Postgresql Node
EXPOSE 80 5432 5000

# Start up
CMD service postgresql start >> /dev/null && \
    service nginx start && \
    su - postgres -c "psql -f /script.sql >> /dev/null" && \
    node $BACK/index.js
