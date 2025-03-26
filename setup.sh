# ~/.bashrc
grep -q "^alias ll=" ~/.bashrc || echo "alias ll='ls --color=auto -alF'" >> ~/.bashrc
source ~/.bashrc

# ~/.ssh/
mkdir -p ~/.ssh
grep -q "lukas.reinert@dhc-gmbh.com$" ~/.ssh/authorized_keys 2>/dev/null || cat id_ed25519_reinert.pub >> ~/.ssh/authorized_keys