ARG branch_alpine
FROM quay.io/toolbx-images/alpine-toolbox:$branch_alpine
ARG branch_pmos
COPY repos/$branch_pmos /etc/apk/repositories
RUN sudo wget https://mirror.postmarketos.org/build.postmarketos.org.rsa.pub -O /etc/apk/keys/build.postmarketos.org.rsa.pub
RUN sudo apk --no-interactive add postmarketos-base postmarketos-ui-console
RUN sudo apk --no-interactive upgrade -Ua
