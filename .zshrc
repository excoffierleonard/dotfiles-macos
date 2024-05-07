# Executes Neofetch
echo ""
neofetch

# Set up coloring
autoload -U colors && colors

# Customize the command prompt
PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[green]%}%M %{$fg_bold[blue]%}%~ %{$reset_color%}%# "

# Aliases
alias ls="eza -alh --group-directories-first"
alias gti="git"
alias vim="nvim"
alias cl="clear"
alias grep="rg"

# Use modern completion system
autoload -Uz compinit
compinit

# Source zsh plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable fzf keyboard shortcuts
eval "$(fzf --zsh)"
