FROM juixtu/nginx-base
WORKDIR /usr/share/nginx/html/
RUN mkdir img
ADD rancher-logo.svg img/
ADD favicon.png img/
ADD index.html .
ENTRYPOINT /bin/sh -c 'sed -i "s/demoapp/$HOSTNAME/" index.html && nginx -g "daemon off;"'
