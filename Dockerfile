FROM nginx:alpine
ADD ./srv/pypi/web /usr/share/nginx/html
