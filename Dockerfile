# syntax=docker/dockerfile:1

FROM ghcr.io/linuxserver/baseimage-rdesktop-web:jammy


RUN \
  echo "**** install packages ****" && \
  usermod -a -G plugdev abc && \
  echo "**** install packages ****" && \
  apt-get update && \
  apt-get install -y \
    gqrx-sdr && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

# add local files
COPY /root /

#COPY --chown=abc:abc /config/.config/gqrx /config/.config/gqrx/


# ports and volumes
EXPOSE 3000

VOLUME /config