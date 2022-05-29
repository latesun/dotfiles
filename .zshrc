#  1. prelude
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

#  2. Key Binding
## 2.1 Use ctrl+y select suggestion
bindkey "^y" autosuggest-accept
## 2.2 Use ctrl+p/n select before/next substring
bindkey "^p" history-substring-search-up
bindkey "^n" history-substring-search-down

#  3. Environment Args
## 3.1. Select default editor
export EDITOR=nvim
## 3.2. Go
export GOPATH=$HOME/workspaces/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

#  4. Short Command
## 4.1 Common
alias vi=nvim
alias vim=nvim
alias ls="exa --icons"
alias ll="exa -l --icons"
alias lg=lazygit

#  5. Third Party Plugins
## 5.2 Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
## 5.3 Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#  6. Customize Functions
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
eval "$(zoxide init zsh)"
