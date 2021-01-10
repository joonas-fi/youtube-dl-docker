FROM python:3.10.0a4-slim

WORKDIR /workspace

ENTRYPOINT ["/opt/youtube-dl/youtube-dl"]

RUN apt update && apt install -y git ffmpeg \
	&& adduser --gecos '' --disabled-password user1 \
	&& chmod 777 /opt

USER user1

RUN cd /opt \
	&& git clone https://github.com/ytdl-org/youtube-dl.git \
	&& cp youtube-dl/bin/youtube-dl youtube-dl/
