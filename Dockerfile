FROM mwader/static-ffmpeg:latest AS ffmpeg-source
 
FROM docker.io/n8nio/n8n:latest
USER root
COPY --from=ffmpeg-source /ffmpeg /usr/local/bin/ffmpeg
COPY --from=ffmpeg-source /ffprobe /usr/local/bin/ffprobe
RUN chmod +x /usr/local/bin/ffmpeg /usr/local/bin/ffprobe
USER node
