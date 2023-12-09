FROM linuxserver/smokeping

RUN apk add git

RUN git clone git@github.com:sharefm/home-smokeping-config.git

WORKDIR /opt/home-smokeping-config
COPY * /config

#WORKDIR /config
#COPY Targets .
#COPY Probes .
#COPY General .
#COPY Database .

VOLUME /config /data

EXPOSE 80