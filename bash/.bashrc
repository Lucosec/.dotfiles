#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias remove-orphans='sudo pacman -Qdtq | sudo pacman -Rns -'

alias ls='eza --color=auto'
alias ll='eza -lh --color=auto'
alias la='eza -lha --color=auto'
alias grep='grep --color=auto'
alias cat='bat'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.local/bin

fastfetch -c neofetch

eval -- "$(/usr/bin/starship init bash --print-full-init)"


