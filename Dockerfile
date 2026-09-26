FROM mwader/static-ffmpeg:latest AS ffmpeg

FROM n8nio/n8n:latest
USER root
COPY --from=ffmpeg /ffmpeg /usr/local/bin/ffmpeg
COPY --from=ffmpeg /ffprobe /usr/local/bin/ffprobe
ADD https://raw.githubusercontent.com/prawnpdf/prawn/master/data/fonts/DejaVuSans.ttf /usr/share/fonts/DejaVuSans.ttf
