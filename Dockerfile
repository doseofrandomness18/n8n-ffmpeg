FROM docker.io/n8nio/n8n:latest

USER root
RUN apk add --no-cache ffmpeg bc
USER node
