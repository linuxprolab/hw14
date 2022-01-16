FROM alpine
RUN apk update \
	&& apk upgrade \
	&& apk add nginx
COPY nginx.conf /etc/nginx/  
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

