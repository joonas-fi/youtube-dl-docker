FROM python:3.11-slim

WORKDIR /workspace

ENTRYPOINT ["/usr/local/bin/yt-dlp"]

RUN apt update && apt install -y git ffmpeg curl \
	&& adduser --gecos '' --disabled-password user1 \
	&& chmod 777 /opt

RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
	&& chmod +x /usr/local/bin/yt-dlp

# launch works test
RUN /usr/local/bin/yt-dlp --version
