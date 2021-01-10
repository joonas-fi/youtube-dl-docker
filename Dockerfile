FROM python:3.10.0a4-slim

WORKDIR /workspace

ENTRYPOINT ["/root/youtube-dl/youtube-dl"]

RUN apt update && apt install -y git ffmpeg

RUN cd /root \
	&& git clone https://github.com/ytdl-org/youtube-dl.git \
	&& cp youtube-dl/bin/youtube-dl youtube-dl/
