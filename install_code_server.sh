# Update and upgrade and then install code-server requirements and curl
echo 'deb https://mega.nz/linux/MEGAsync/xUbuntu_18.04/ ./' > /etc/apt/sources.list.d/mega-nz.list
apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install -y apt-utils && \
  apt-get install -y && \
  build-essential \
  pkg-config \
  libx11-dev \
  libxkbfile-dev \
  libsecret-1-dev \
  python3 \
  curl \
  tmux \
  ca-certificates \
  zsh  && \
  curl -fsSL https://mega.nz/keys/MEGA_signing.key | apt-key add - && \
  apt-get update && apt-get install megacmd && \
  curl -fsSL https://code-server.dev/install.sh | sh
