# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Neofetch
echo ""
neofetch

# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up coloring
# autoload -U colors && colors

# Customize the command prompt
# PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[green]%}%M %{$fg_bold[blue]%}%~ %{$reset_color%}%# "

# Aliases
alias ls="eza -alh --group-directories-first --icons=always --color=always"
alias gti="git"
alias vim="nvim"
alias cl="clear"
alias grep="rg"
alias cd="z"
alias top="btop"
alias :q="exit"
alias lg="lazygit"

# Use modern completion system
autoload -Uz compinit
compinit

# Source zsh plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable fzf keyboard shortcuts
eval "$(fzf --zsh)"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

# Enable powerlevell10k as our theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
