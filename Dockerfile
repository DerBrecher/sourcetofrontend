#Build
FROM node:10
WORKDIR /app/
COPY . /app/

RUN echo "NodeJS"
#RUN find . -name sourcebuild.yaml
RUN ls
RUN rm -rf output && \
	mkdir output && \
	cp -rf scripts/ output/ && \
	cp index.html output/

#Run
FROM httpd:2.4
WORKDIR /usr/local/apache2/htdocs/
COPY --from=0 /app/output/ .

RUN echo "Httpd"
RUN pwd
RUN ls