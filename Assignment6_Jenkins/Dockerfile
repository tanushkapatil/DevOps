FROM jenkins/jenkins:lts-jdk17

USER root
# Git and Python are needed by the build steps
RUN apt-get update && apt-get install -y --no-install-recommends python3 git && rm -rf /var/lib/apt/lists/*
USER jenkins

# Required plugins: Git, GitHub, Pipeline (+ stage view)
RUN jenkins-plugin-cli --plugins git github workflow-aggregator pipeline-stage-view

# Skip the setup wizard for this local lab instance
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY init.groovy.d/ /usr/share/jenkins/ref/init.groovy.d/
