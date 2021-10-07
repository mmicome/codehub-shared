FROM nginx:alpine
COPY src/ /usr/share/nginx/html/shared
ADD nginx/default.conf /etc/nginx/conf.d/
EXPOSE 8083
WORKDIR /usr/share/nginx/html
RUN chmod -R a+rx *