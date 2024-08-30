
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} jonathan:%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%} "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
