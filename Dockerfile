FROM pypa/bandersnatch as download
ADD ./bandersnatch.conf /etc/bandersnatch.conf
RUN bandersnatch mirror

FROM nginx:alpine
COPY --from=download /srv/pypi/web /usr/share/nginx/html