FROM debian:stretch-slim

MAINTAINER "Diego Alejandro Rodriguez Ayala <diego.magno120@gmail.com>"

# Environment variable
ENV DISTRO stretch
ENV NODE_VERSION node_10.x
ENV WWW /usr/share/nginx/html
ENV DB /DB/Caron

# Base
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends --no-install-suggests -y \
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

# Core
RUN apt-get install --no-install-recommends --no-install-suggests -y \
      postgresql-10 \
      nginx \
      nodejs && \
      rm -rf /var/lib/apt/lists/*

# RUN rm -rf $WWW*
#
# Front-end
COPY Fron-End/www/  $WWW/

# Back-end
COPY Back-End/ /Back-End/

# Data Base
COPY Modelado_de_BD/CARON_TOTAL.sql $DB/caron.sql

# Port Ngnix server
EXPOSE 80

# Port Postgresql DB
EXPOSE 5432

# Port Node
EXPOSE 500

# Start up
CMD service postgresql start && \
    service nginx start && \
    su - postgres && \
    psql -f $DB/caron.sql && \
    exit && \
    node /Back-End/index.js
