FROM ubuntu:focal
# https://askubuntu.com/questions/909277/avoiding-user-interaction-with-tzdata-when-installing-certbot-in-a-docker-contai
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt -y install \
        libasound2 \
        libatk-bridge2.0-0 \
        libatk1.0-0 \
        libatspi2.0-0 \
        libcairo2 \
        libcups2 \
        libcurl4\
        libdbus-1-3 \
        libdrm2 \
        libexpat1 \
        libgbm1 \
        libglib2.0-0 \
        libgtk-3-0 \
        libnspr4 \
        libnss3 \
        libpango-1.0-0 \
        libx11-6 \
        libxcb1 \
        libxcomposite1 \
        libxdamage1 \
        libxext6\
        libxfixes3\
        libxkbcommon0 \
        libxrandr2 \
        xdg-utils \
        fonts-liberation
RUN apt -y install \
        libsodium-dev \
        apt-utils \
        wget \
        curl \
        netcat-openbsd \
        netcat \
        ncat
RUN wget https://doma.2038.io/software/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb && \
    dpkg -i /tmp/chrome.deb && rm -v /tmp/chrome.deb
RUN useradd -m user
