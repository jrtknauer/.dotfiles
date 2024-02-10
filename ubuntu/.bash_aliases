#!/usr/bin/env bash
# .bashrc should source this if it exists

# Keyboard layouts
alias asdf="setxkbmap dvorak-dev"
alias aoeu="setxkbmap us"

# Laziness
alias python="python3"
alias clip="xclip -selection clipboard"

# Let's not just dump all env vars in an alias file
if [ -f ~/.bash_env ]; then
    source ~/.bash_env
fi

