FROM patpat/basicimage:latest
# 维护者
MAINTAINER jerryang wenxue.yang@patpat.com
# INSTALL NGINX
RUN mkdir -p /usr/local/programs/src
RUN cd /usr/local/programs/src && wget http://nginx.org/download/nginx-1.12.2.tar.gz && tar -zxf nginx-1.12.2.tar.gz
RUN cd /usr/local/programs/src && wget https://www.zlib.net/fossils/zlib-1.2.11.tar.gz && tar -zxf zlib-1.2.11.tar.gz
RUN cd /usr/local/programs/src && wget http://ftp.cs.stanford.edu/pub/exim/pcre/pcre-8.38.tar.gz && tar -zxf pcre-8.38.tar.gz
RUN cd /usr/local/programs/src && wget https://ftp.openssl.org/source/old/1.0.2/openssl-1.0.2h.tar.gz && tar -zxf openssl-1.0.2h.tar.gz
RUN cd /usr/local/programs/src/nginx-1.12.2 && ./configure --prefix=/usr/local/programs/nginx --pid-path=/usr/local/programs/nginx/logs/nginx.pid --error-log-path=/usr/local/programs/nginx/logs/error.log --http-log-path=/usr/local/programs/nginx/logs/access.log --with-http_ssl_module --with-http_stub_status_module --with-http_stub_status_module --with-pcre=/usr/local/programs/src/pcre-8.38 --with-zlib=/usr/local/programs/src/zlib-1.2.11 --with-openssl=/usr/local/programs/src/openssl-1.0.2h && make && make install
# CLEAN
RUN rm -rf /usr/local/programs/src/{pcre-8.38,zlib-1.2.11,openssl-1.0.2h,nginx-1.12.2}
ADD nginx.conf /usr/local/programs/nginx/conf/nginx.conf
RUN mkdir /usr/local/programs/nginx/conf/conf.d
VOLUME /usr/local/programs/nginx/conf/conf.d
EXPOSE 80
CMD ["/usr/local/programs/nginx/sbin/nginx","-g","daemon off;"]