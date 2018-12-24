FROM node:10

WORKDIR /app
COPY . /app

RUN echo "NodeJS"
#RUN find . -name sourcebuild.yaml
RUN ls
RUN mkdir output && \
	cp -rf scripts/ output/ && \
	cp index.html output/


FROM httpd:2.4
COPY --from=0 /app/output/ .
RUN echo "Httpd"
RUN ls