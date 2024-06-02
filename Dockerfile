FROM nginx:mainline-alpine

RUN \
    mkdir /usr/share/nginx/html/_app && \
    mkdir /usr/share/nginx/html/_app/immutable && \
    mkdir /usr/share/nginx/html/_app/immutable/assets && \
    mkdir /usr/share/nginx/html/_app/immutable/chunks && \
    mkdir /usr/share/nginx/html/_app/immutable/entry && \
    mkdir /usr/share/nginx/html/_app/immutable/nodes && \
    mkdir /usr/share/nginx/html/Movies

COPY \
    build/*.html /usr/share/nginx/html/ \
    build/*.png /usr/share/nginx/html/ \
    build/*.txt /usr/share/nginx/html/ \
    build/_app/env.js /usr/share/nginx/html/_app/ \
    build/_app/version.json /usr/share/nginx/html/_app/ \
    build/_app/immutable/assets/*.css /usr/share/nginx/html/_app/immutable/assets/ \
    build/_app/immutable/assets/*.woff /usr/share/nginx/html/_app/immutable/assets/ \
    build/_app/immutable/assets/*.woff2 /usr/share/nginx/html/_app/immutable/assets/ \
    build/_app/immutable/assets/*.jpg /usr/share/nginx/html/_app/immutable/assets/ \
    build/_app/immutable/chunks/*.js /usr/share/nginx/html/_app/immutable/chunks/ \
    build/_app/immutable/entry/*.js /usr/share/nginx/html/_app/immutable/entry/ \
    build/_app/immutable/nodes/*.js /usr/share/nginx/html/_app/immutable/nodes/ \
    build/Movies/*.html /usr/share/nginx/html/Movies/

EXPOSE 8090