FROM alpine
MAINTAINER Stefan Reinhard

# Add edge repos
RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories

# Update packages
RUN apk --no-cache update && apk --no-cache upgrade

# Install packages
RUN apk --no-cache add vips-dev@edge ffmpeg-dev@edge fftw-dev@edge g++@edge cmake@edge make@edge