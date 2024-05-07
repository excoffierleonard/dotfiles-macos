echo ""
neofetch

# Set up coloring
autoload -U colors && colors

# Customize the command prompt
PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[green]%}%M %{$fg_bold[blue]%}%~ %{$reset_color%}%# "

alias ls="eza -alh --group-directories-first"

autoload -Uz compinit
compinit

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(fzf --zsh)"
