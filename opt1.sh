#!/bin/bash
docker run --name ngx1 \
--mount type=bind,source=/home/gem/app/ngx/www,target=/usr/share/nginx/html,readonly \
--mount type=bind,source=/home/gem/app/ngx/conf,target=/etc/nginx/conf,readonly \
-p 80:80 -d nginx