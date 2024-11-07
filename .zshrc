#Custom ZSH configuration

# Make globbing case-insensitive
setopt nocaseglob

# Check if neovim is installed
if command -v nvim &> /dev/null; then
    export EDITOR="nvim"
else
    export EDITOR="vim"
fi


# Custom aliases
alias ls='eza --all --long --git --no-filesize --icons=always --color=always --no-time --no-user --no-permissions'
alias ll='eza --all --long --icons=always --color=always '
alias cd='z'
alias c='clear'
alias switch='darwin-rebuild switch --impure --flake ~/.config/nix'
alias lg='lazygit'

# Custom functions
export XDG_CONFIG_HOME="$HOME/.config"

# Path to pipenv and virtualenv
export PATH="$PATH:/Users/mehdimerkachi/Library/Python/3.9/bin"

# Path to Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Starship prompt initialization
eval "$(starship init zsh)"

# Zoxide initialization
eval "$(zoxide init zsh)"

# Hisotry initialization
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt extendedhistory
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_space
setopt hist_verify

# Source ZSH Autocompletion
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source ZSH syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source ZSH zsh-completions
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

# Shell integration
eval "$(fzf --zsh)"


export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
