# To sign mega's gpg keys
apt-get install ca-certificates

# Add repo to sources
echo 'deb https://mega.nz/linux/MEGAsync/xUbuntu_18.04/ ./' > /etc/apt/sources.list.d/mega-nz.list

# Add GPG key
curl -fsSL https://mega.nz/keys/MEGA_signing.key | apt-key add -

# Update and install 
apt-get update && apt-get install megacmd -y