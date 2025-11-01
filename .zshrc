# Pure Prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# Use micro as the default cli editor, not vim
export EDITOR=micro
export VISUAL="$EDITOR"

# Adding git autocomplete
autoload -Uz compinit && compinit

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/afnan/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi


# aliases made by Afnan
alias sva="source ./.venv/bin/activate"
alias nrd="npm run dev"
alias dev="cd ~/Developer"
alias home="cd ~"
alias c="clear"

# Adding fzf (fuzzy finder)
source <(fzf --zsh)

# tab should auto accept zsh autosuggestion
# bindkey '\t' end-of-line
# bindkey '\t\t' end-of-line
bindkey '^[[Z' autosuggest-accept # Shift + tab should accept autosuggestion 

# Adding zoxide (Must also be at the end)
eval "$(zoxide init --cmd cd zsh)"
# Adding zsh-syntax-highlighting (NOTE: MUST BE AT THE END!)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Adding autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
