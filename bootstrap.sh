#!/bin/sh

# https://git-scm.com/book/en/v2/Git-Tools-Credential-Storage
# git config --global credential.helper store
# Use Deploy keys instead
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/managing-deploy-keys#deploy-keys

# https://go.dev/doc/install
curl -OL https://go.dev/dl/go1.26.1.linux-amd64.tar.gz
 rm -rf /usr/local/go && tar -C /usr/local -xzf go1.26.1.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> "$HOME/.profile"
 go version

# https://cwiki.apache.org/confluence/display/HTTPD/NonRootPortBinding
sudo setcap cap_net_bind_service=+ep $(which node)

# https://certbot.eff.org/instructions?ws=other&os=snap
sudo apt-get remove certbot
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/local/bin/certbot
# sudo certbot certonly --standalone -n --agree-tos -m name@example.com --redirect -d example.com,www.example.com

# https://certbot.eff.org/docs/using.html#where-are-my-certificates
# sudo chmod -R 0755 /etc/letsencrypt/{live,archive}

# https://ubuntu.com/server/docs/how-to/databases/install-mysql/
sudo apt-get update
sudo apt-get -y install mysql-server
# sudo apt-get -y install mariadb-server
# https://ubuntu.com/server/docs/how-to/databases/install-postgresql/
# sudo apt-get -y install postgresql

# https://nodemailer.com/transports/sendmail/
# https://man7.org/linux/man-pages/man5/hosts.5.html#EXAMPLES
# sudo nano /etc/hosts e.g. 198.51.100.0 (public Internet) fqdn hostname
# 127.0.1.1       thishost.mydomain.org  thishost
# sudo echo "$(curl https://checkip.amazonaws.com)\tfqdn hostname" >> /etc/hosts
# or
# sudo echo "$(dig @ns1.google.com -4 o-o.myaddr.l.google.com TXT +short | tr -d \")\tfqdn hostname" >> /etc/hosts
# TXT Record @ v=spf1 a:thishost.mydomain.org ~all Automatic
sudo apt-get -y install sendmail
