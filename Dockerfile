FROM nginx:alpine
COPY ./srv/pypi/web /usr/share/nginx/html
