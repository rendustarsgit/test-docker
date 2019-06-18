FROM openjdk:8u191-jre-alpine3.8

RUN apk add curl jq


WORKDIR /usr/share/selenium

ADD target/test-docker.jar 			test-docker.jar
ADD target/test-docker-tests.jar 	test-docker-tests.jar
ADD target/libs				        libs
ADD search-module.xml 	   			search-module.xml
ADD healthcheck.sh					healthcheck.sh


ENTRYPOINT sh healthcheck.sh
