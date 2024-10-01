FROM linuxserver/smokeping

RUN apk add git

WORKDIR /opt/

RUN git clone https://github.com/sharefm/home-smokeping-config.git

RUN cp /opt/home-smokeping-config/Targets /config
RUN cp /opt/home-smokeping-config/Probes /config
RUN cp /opt/home-smokeping-config/General /config
RUN cp /opt/home-smokeping-config/Database /config

# WORKDIR /config
# COPY Targets .
# COPY Probes .
# COPY General .
# COPY Database .

VOLUME /config /data

EXPOSE 80


