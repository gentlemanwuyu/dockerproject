FROM patpat/basicimage:latest
MAINTAINER jerryang wenxue.yang@patpat.com
# INSTALL php7
RUN mkdir -p /usr/local/programs/src
RUN cd /usr/local/programs/src && wget http://mirrors.sohu.com/php/php-7.0.28.tar.gz && tar -zxf php-7.0.28.tar.gz
RUN cd /usr/local/programs/src/php-7.0.26 && ./configure --prefix=/usr/local/programs/php --with-config-file-path=/usr/local/programs/php/etc --enable-fpm --with-fpm-user=www --with-fpm-group=www --with-mysqli --with-pdo-mysql --with-iconv-dir --with-freetype-dir --with-jpeg-dir --with-png-dir --with-zlib --with-libxml-dir=/usr --enable-xml --disable-rpath --enable-bcmath --enable-shmop --enable-sysvsem --enable-inline-optimization --with-curl --enable-mbregex --enable-mbstring --with-mcrypt --enable-ftp --with-gd --enable-gd-native-ttf --with-openssl --with-mhash --enable-pcntl --enable-sockets --with-xmlrpc --enable-zip --enable-soap --without-pear --with-gettext --enable-fileinfo --enable-maintainer-zts && make && make install
ADD php-fpm.conf /usr/local/programs/php/etc/php-fpm.conf
ADD php.ini /usr/local/programs/php/etc/php.ini
ADD php-fpm.d/www.conf /usr/local/programs/php/etc/php-fpm.d/www.conf
# INSTALL composer
RUN ln -s /usr/local/programs/php/bin/php /usr/bin/php && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer
# INSTALL nodejs
RUN cd /usr/local/programs/src && wget https://nodejs.org/download/release/v4.4.7/node-v4.4.7-linux-x64.tar.gz
RUN cd /usr/local/programs/src && tar -zxf node-v4.4.7-linux-x64.tar.gz && mv node-v4.4.7-linux-x64 node
RUN ln -s /usr/local/programs/src/node/bin/node /usr/bin/node && ln -s /usr/local/programs/src/node/bin/npm /usr/bin/npm
RUN npm -g install npm@3.9.5 && npm install --global gulp && ln -s /usr/local/programs/src/node/bin/gulp /usr/bin/gulp
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 9000
CMD ["/usr/local/programs/php/sbin/php-fpm"]
