#Custom ZSH configuration

# Custom aliases
alias ls='eza --all --long --git --no-filesize --icons=always --color=always --no-time --no-user --no-permissions'
alias cd='z'
alias c='clear'
alias darwin-switch='darwin-rebuild switch --impure --flake ~/.config/nix'

# Custom functions
export XDG_CONFIG_HOME="$HOME/.config"


# Path to Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Starship prompt initialization
eval "$(starship init zsh)"

# Zoxide initialization
eval "$(zoxide init zsh)"


# Source ZSH Autocompletion
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source ZSH syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
