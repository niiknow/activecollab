FROM php:7.4-apache

RUN apt-get update
RUN apt-get upgrade -y

ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/

RUN chmod uga+x /usr/local/bin/install-php-extensions && sync

RUN DEBIAN_FRONTEND=nointeractive apt-get update -q \
  && DEBIAN_FRONTEND=nointeractive apt-get install -qq -y \
  cron \
  curl \
  git \
  zip unzip \
  && install-php-extensions \
  bcmath \
  bz2 \
  calendar \
  curl \
  date \
  dom \
  fileinfo \
  filter \
  ftp \
  hash \
  iconv \
  imap \
  json \
  libxml \
  mbstring \
  openssl \
  session \
  xmlreader \
  xmlwriter \
  exif \
  gd \
  intl \
  ldap \
  memcached \
  mysqli \
  opcache \
  pdo_mysql \
  pdo_pgsql \
  pgsql \
  redis \
  soap \
  xsl \
  zip \
  xml \
  xdebug \
  sockets

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install the CRON tab.
ADD config/crontab /etc/cron.d/activecollab
RUN chmod 0644 /etc/cron.d/activecollab

RUN a2enmod rewrite && a2enmod headers
RUN groupmod -g 1000 www-data \
  && usermod -u 1000 -g 1000 www-data
RUN chown -R 1000:1000 /var/www
