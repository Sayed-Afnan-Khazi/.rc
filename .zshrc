# Pure Prompt
autoload -U promptinit; promptinit
prompt pure

# Adding Sublime text to the path
PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Adding git autocomplete
autoload -Uz compinit && compinit

# Adding zsh-syntax-highlighting (NOTE: MUST BE AT THE END!)
source /Users/afnan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
