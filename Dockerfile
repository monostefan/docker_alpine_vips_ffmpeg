FROM alpine
MAINTAINER Stefan Reinhard

# Add edge repos
RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories

# Update packages
RUN apk --no-cache update && apk --no-cache upgrade

# Packages needed to build tifig
RUN apk --no-cache add vips-dev@edge ffmpeg-dev@edge fftw-dev@edge g++@edge cmake@edge make@edge

# Packages needed to run test suite
RUN apk --no-cache add bash@edge py2-pip@edge py-pillow@edge py-scipy@edge py-argparse@edge python-dev@edge

# May the dark lord help us with this one
RUN pip install numpy --upgrade

# And finally what we actually need
RUN pip install pyssim colorprint