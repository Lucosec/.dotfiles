export PATH=$PATH:$HOME/.local/bin

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch CORRECT NO_CASE_GLOB
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lucas/.zshrc'

# Case insensitive auto completion
autoload -Uz compinit && compinit
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias remove-orphans='sudo pacman -Qdtq | sudo pacman -Rns -'

alias ls='eza --color=auto'
alias ll='eza -lh --color=auto'
alias la='eza -lha --color=auto'
alias grep='grep --color=auto'
alias cat='bat'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fastfetch -c neofetch

eval -- "$(/usr/bin/starship init zsh --print-full-init)"%  
