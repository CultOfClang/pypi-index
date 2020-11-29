FROM arongizra/wget2-alpine as download
RUN wget2 -r pypi.org/simple/

FROM nginx:alpine
COPY --from=download /pypi.org /usr/share/nginx/html
