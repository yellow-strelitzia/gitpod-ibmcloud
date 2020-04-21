
FROM gitpod/workspace-full:latest

# install custom tools, runtime, etc.

USER root

RUN mkdir -p /home/gitpod/.bluemix/plugins

# Install custom tools, runtime, etc.
RUN curl -sL https://clis.cloud.ibm.com/install/linux | sh

RUN chown -R gitpod:gitpod /home/gitpod/.bluemix
RUN chown -R gitpod:gitpod /home/gitpod/.bluemix/plugins

USER root
