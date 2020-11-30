FROM pypa/bandersnatch as download
ADD ./bandersnatch.conf /etc/bandersnatch.conf
RUN bandersnatch mirror

FROM nginx:alpine
FROM nginx:alpine
ADD srv/pypi/web /usr/share/nginx/html
COPY --from=download /srv/pypi/web /usr/share/nginx/html 
