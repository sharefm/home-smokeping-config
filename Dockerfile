FROM linuxserver/smokeping

RUN apk add git

WORKDIR /opt/

RUN git clone https://github.com/sharefm/home-smokeping-config.git

RUN cp /opt/home-smokeping-config/* /config

#WORKDIR /config
#COPY Targets .
#COPY Probes .
#COPY General .
#COPY Database .

VOLUME /config /data

EXPOSE 80