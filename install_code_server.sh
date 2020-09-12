# Update and upgrade and then install code-server requirements and curl
apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install -y \
  build-essential \
  pkg-config \
  libx11-dev \
  libxkbfile-dev \
  libsecret-1-dev \
  python3 \
  curl \
  zsh

npm config set python python3


curl -fsSL https://code-server.dev/install.sh | sh
