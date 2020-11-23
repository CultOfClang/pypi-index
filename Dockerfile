FROM nginx:alpine
ARG SRV_PYPI
COPY ${SRV_PYPI}/web /usr/share/nginx/html
