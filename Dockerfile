FROM debian:stretch
RUN DEBIAN_FRONTENT=noninteractive && \
  apt-get update && apt-get -y install jq curl gettext-base

COPY bin/ /opt/resource/
RUN chmod +x /opt/resource/*
