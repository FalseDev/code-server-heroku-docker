apt-get install whois sudo -y
useradd --create-home --password $(mkpasswd -s $USERPASS) -s $(which bash) $(ADMIN_USER) 
usermod -aG sudo nava
