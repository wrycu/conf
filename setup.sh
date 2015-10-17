#!/bin/bash

# Copy our configs over (making a backup of what exists)
if [ -e ~/.colors ]
    then cp ~/.colors colors.bak
fi
cp colors ~/.colors

if [ -e ~/.tmux.conf ]
    then cp ~/.tmux.conf tmux.conf.bak
fi
cp tmux.conf ~/.tmux.conf

if [ -e ~/.vimrc ]
    then cp ~/.vimrc vimrc.bak
fi
cp vimrc ~/.vimrc

# Download the solarized VIM scheme, move the one file we care about, and delete the other stuff
if [ ! -e ~/.vim/colors ]
    then mkdir -p ~/.vim/colors
fi
git clone https://github.com/altercation/vim-colors-solarized
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
rm -rf vim-colors-solarized

if [ -e ~/.bash_profile ]
    then cp ~/.bash_profile bash_profile.bak
fi
cp bash_profile ~/.bash_profile

# This requires a patched font
# I used "DejaVu Mono for Powerline" from https://github.com/powerline/font
# You must set PuTTY to use this font
git clone https://github.com/milkbikis/powerline-shell ~/powerline-shell
cd ~/powerline-shell
if [ ! -e ~/powerline-shell/config.py ]
    then sed -i -- "s/THEME = 'default'/THEME = 'solarized-dark'/g" config.py.dist
else
    sed -i -- "s/THEME = 'default'/THEME = 'solarized-dark'/g" config.py
fi
python install.py
