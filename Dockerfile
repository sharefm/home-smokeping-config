FROM linuxserver/smokeping

WORKDIR /config
COPY Targets .
COPY Probes .
COPY General .
COPY Database .

VOLUME /config /data

EXPOSE 80