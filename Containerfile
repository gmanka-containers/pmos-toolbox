FROM quay.io/toolbx-images/alpine-toolbox:edge

RUN sudo wget https://gitlab.com/adamthiede/postmarketos-docker/-/raw/main/edge/repositories -O /etc/apk/repositories
RUN sudo wget https://mirror.postmarketos.org/build.postmarketos.org.rsa.pub -O /etc/apk/keys/build.postmarketos.org.rsa.pub
RUN sudo apk --no-interactive add postmarketos-base postmarketos-ui-console
RUN sudo apk --no-interactive upgrade -Ua

