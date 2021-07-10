From debian:buster

MAINTAINER Rohit Singh

LABEL Description="Docker image for intelliJ with preinstalled open JDK 11"

ARG JDK_VERSION=11.0.6+10-2
ARG INTELLIJ_VERSION=2020.1
ARG MAVEN_VERSION=3.6.3
ARG GRADLE_VERSION=6.2.2

RUN apt update \
  && echo "install some basics first"
  && apt install -y software-properties-common apt-transport-https wget unzip libfontconfig1 git

RUN echo "install AdoptOpenJDK 11" \
  && wget -q http://adoptopenjdk.jfrog.io/adoptopenjdk

