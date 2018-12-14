docker pull docker.dev.interfocus.org:5000/nginx
docker tag docker.dev.interfocus.org:5000/nginx patpat/nginx

docker rmi docker.dev.interfocus.org:5000/nginx

docker pull docker.dev.interfocus.org:5000/php-fpm
docker tag docker.dev.interfocus.org:5000/php-fpm patpat/php-fpm

docker rmi docker.dev.interfocus.org:5000/php-fpm

docker pull docker.dev.interfocus.org:5000/mysql
docker tag docker.dev.interfocus.org:5000/mysql patpat/mysql

docker rmi docker.dev.interfocus.org:5000/mysql

docker pull docker.dev.interfocus.org:5000/redis
docker tag docker.dev.interfocus.org:5000/redis patpat/redis

docker rmi docker.dev.interfocus.org:5000/redis

docker pull docker.dev.interfocus.org:5000/elasticsearch
docker tag docker.dev.interfocus.org:5000/elasticsearch patpat/elasticsearch

docker rmi docker.dev.interfocus.org:5000/elasticsearch
