FROM nginx:alpine
ARG SRV_PYPI=./srv/pypi
COPY ${SRV_PYPI}/web /usr/share/nginx/html
