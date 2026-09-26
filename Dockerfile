FROM n8nio/n8n:latest-debian

USER root
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg fonts-dejavu && rm -rf /var/lib/apt/lists/*

USER node
