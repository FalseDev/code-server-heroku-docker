# Update and upgrade and then install code-server requirements and curl
apt-get update -y && apt-get upgrade -y && \
  apt-get install -y \
  build-essential pkg-config gnupg2 libx11-dev libxkbfile-dev libsecret-1-dev \
  ca-certificates \
  python3 curl tmux zsh && \
curl -fsSL https://code-server.dev/install.sh | sh

echo 'deb https://mega.nz/linux/MEGAsync/xUbuntu_18.04/ ./' > /etc/apt/sources.list.d/mega-nz.list && \
curl -fsSL https://mega.nz/keys/MEGA_signing.key | apt-key add - && \
apt-get update && apt-get install megacmd
