FROM node:10

RUN echo "NodeJS"
#RUN find . -name sourcebuild.yaml
RUN ls


FROM httpd:2.4

RUN echo "Httpd"
RUN ls