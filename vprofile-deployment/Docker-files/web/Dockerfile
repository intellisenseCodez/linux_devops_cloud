FROM nginx:latest
LABEL “Project”=”JAVA_WEB_APP”
LABEL “Author”=”horlar”


RUN rm -rf /etc/nginx/conf.d/default.conf
COPY nginxvproapp.conf /etc/nginx/conf.d/vproapp.conf