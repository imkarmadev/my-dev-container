# Use an official Node.js base image
FROM node:20

# Avoid warnings by switching to noninteractive for the build process
ENV DEBIAN_FRONTEND=noninteractive

ENV USER=root

# Use "bash" as replacement for	"sh" if you wona use `source` in Dokerfile
# RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Install deps
RUN apt-get update && apt-get install -y --no-install-recommends \
    xfce4 \
    xfce4-goodies \
    tightvncserver \
    dbus-x11 \
    xfonts-base \
    gcc \
    libgl1-mesa-dev \
    xorg-dev \
    libwebkit2gtk-4.1-dev \
    build-essential \
    curl \
    wget \
    file \
    libxdo-dev \
    libssl-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev \
    ca-certificates \
    autoconf \
    automake \
    autotools-dev \
    libtool \
    xutils-dev \
    zsh \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Get Golang
ENV GO_VERSION="1.22.5"
ENV GO_ARCH="amd64"

RUN curl -O -L "https://golang.org/dl/go${GO_VERSION}.linux-${GO_ARCH}.tar.gz"

RUN rm -rf /usr/local/go && tar -C /usr/local -xzf "go${GO_VERSION}.linux-amd64.tar.gz"

ENV PATH=$PATH:/usr/local/go/bin

# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc


# Get Atuin
RUN curl https://setup.atuin.sh -sSf | bash -s -- -y

# RUN echo 'eval "$(atuin init bash)"' >> $HOME/.bashrc

# Get OhMyZSH
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN chsh -s /usr/bin/zsh root

RUN echo 'eval "$(atuin init zsh)"' >> $HOME/.zshrc