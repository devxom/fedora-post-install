#!/usr/bin/env bash

# allow current user to run docker with sudo (absolute path)
sudo -E tee /etc/sudoers.d/docker >/dev/null <<-EOF
# allow current user to run docker with sudo (absolute path)
${USER} ALL=(ALL) NOPASSWD: /usr/bin/docker
${USER} ALL=(ALL) NOPASSWD: /usr/bin/docker-compose
${USER} ALL=(ALL) NOPASSWD: /usr/local/bin/docker-compose
EOF

# Install docker-cleanup command
cd /tmp
git clone https://gist.github.com/f0fcab25ecbfb6a227c69a4f8419ea3c.git

cd f0fcab25ecbfb6a227c69a4f8419ea3c
sudo mv docker-cleanup /usr/local/bin/docker-cleanup
sudo chmod +x /usr/local/bin/docker-cleanup