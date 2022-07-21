#!/bin/bash

HISTFILE=~/.history
setopt appendhistory
HISTSIZE=50000000000000000
SAVEHIST=500000000000000000

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# all files to source
source "$ZDOTDIR/zsh-exports"
source "$ZDOTDIR/zsh-aliases"
source "$ZDOTDIR/plugins/zsh-defer/zsh-defer.zsh"
source "$ZDOTDIR/lscolors"
zsh-defer source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
zsh-defer source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZDOTDIR/plugins/prompt.zsh"

group_lazy_load $HOME/.cargo/env cargo rustc rustup         #use this if u have rust installed


bindkey -e                                         # emacs key bindings
bindkey ' ' magic-space                         
bindkey '^[[3;5~' kill-word                   
bindkey '^[[3~' delete-char                    
bindkey '^[[1;5C' forward-word               
bindkey '^[[1;5D' backward-word                 
bindkey '^[[5~' beginning-of-buffer-or-history   
bindkey '^[[6~' end-of-buffer-or-history
bindkey '^[[H' beginning-of-line          
bindkey '^[[e' end-of-line               
bindkey '^[[Z' undo

