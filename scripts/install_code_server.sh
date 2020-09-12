# Update and upgrade and then install code-server requirements and curl
apt-get update -y && apt-get upgrade -y

apt-get install -y build-essential pkg-config gnupg2 libx11-dev libxkbfile-dev libsecret-1-dev python3 

# Install script
curl -fsSL https://code-server.dev/install.sh | sh