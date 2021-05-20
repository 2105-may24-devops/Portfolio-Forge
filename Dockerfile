# syntax = docker/dockerfile:1.2
FROM jenkins/jenkins

ENV JENKINS_HOME /var/jenkins_home
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc_configs.yaml
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY jenkins-plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root
RUN apt update && apt install lsof -y
USER jenkins
COPY .secrets /run/secrets/secrets.properties
#RUN  printenv > envs.txt
COPY jcac.yaml /var/jenkins_home/casc_configs.yaml

