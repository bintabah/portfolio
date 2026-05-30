FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY photo.jpeg /usr/share/nginx/html/photo.jpeg

EXPOSE 80
