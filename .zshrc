# Pure Prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# Adding git autocomplete
autoload -Uz compinit && compinit

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/afnan/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# aliases made by Afnan
alias sva="source ./.venv/bin/activate"
alias nrd="npm run dev"
alias dev="cd ~/Developer"
alias home="cd ~"
alias c="clear"

# Adding zsh-syntax-highlighting (NOTE: MUST BE AT THE END!)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
