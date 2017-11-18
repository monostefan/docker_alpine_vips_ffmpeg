FROM alpine
MAINTAINER Stefan Reinhard

RUN \
    # Add edge repos
	echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \

    # Update packages
    apk update && apk upgrade && \

	# Install packages
	apk --no-cache add vips-dev@edge ffmpeg-dev@edge fftw-dev@edge g++@edge cmake@edge make@edge