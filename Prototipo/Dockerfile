FROM debian:stretch-slim

MAINTAINER "Diego Alejandro Rodriguez Ayala <diego.magno120@gmail.com>"

# Environment variable
ENV DISTRO stretch
ENV NODE_VERSION node_10.x
ENV WWW /usr/share/nginx/html/

# Base
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends --no-install-suggests -y \
      vim \
      curl \
      gnupg \
      apt-transport-https \
      ca-certificates

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

# CORE
RUN apt-get install --no-install-recommends --no-install-suggests -y \
      postgresql-10 \
      nginx \
      nodejs

RUN rm -rf $WWW*

# Front-end
COPY Front-End/www/ $WWW

# Port Ngnix server
EXPOSE 80

# STOPSIGNAL SIGTERM
#
# CMD ["nginx", "-g", "daemon off;"]

# Start up
CMD service postgresql start && \
    service nginx start && \
    bash
