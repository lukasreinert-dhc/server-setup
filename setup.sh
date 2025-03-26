# ~/.bashrc
grep -q "^alias ll=" ~/.bashrc || (echo "alias ll='ls --color=auto -alF'" >> ~/.bashrc && source ~/.bashrc)

# ~/.ssh/
mkdir -p ~/.ssh && chmod 700 ~/.ssh
grep -q "lukas.reinert@dhc-gmbh.com$" ~/.ssh/authorized_keys 2>/dev/null || (cat id_ed25519_reinert.pub >> ~/.ssh/authorized_keys ; chmod 600 ~/.ssh/authorized_keys)

# ~/.vimrc
grep -q "^set t_u7=" ~/.vimrc 2>/dev/null || echo "set t_u7=" >> ~/.vimrc # fix vim opening in replace mode
grep -q "^set mouse-=a$" ~/.vimrc 2>/dev/null || echo "set mouse-=a" >> ~/.vimrc # fix entering visual mode when marking text
