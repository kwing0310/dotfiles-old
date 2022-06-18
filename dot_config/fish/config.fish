set -x LANG en_US.UTF-8
set -x EDITOR nvim

set -U fish_user_paths /bin
set -U fish_user_paths $fish_user_paths /sbin
set -U fish_user_paths $fish_user_paths /usr/bin
set -U fish_user_paths $fish_user_paths /usr/sbin
set -U fish_user_paths $fish_user_paths /usr/local/bin
set -U fish_user_paths $fish_user_paths /usr/local/sbin
set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin
set -U fish_user_paths $fish_user_paths $HOME/.rbenv/bin
set -U fish_user_paths $fish_user_paths $HOME/.nodebrew/current/bin

set -x GPG_TTY $(tty)
set -x GITHUB_USER yui87
set -x GOPATH $HOME
set -U fish_user_paths $fish_user_paths $GOPATH/bin

# Iceberg Dark
# https://github.com/sheepla/dotfiles
set -Ux BAT_THEME 'base16'
set -Ux EXA_COLORS \
'ur=1;34:'\
'uw=1;36:'\
'ux=1;32:'\
'ue=1;;32:'\
'gr=1;37:'\
'gw=1;37:'\
'gx=1;37:'\
'tr=1;37:'\
'tw=1;37:'\
'tx=1;37:'\
'su=1;37:'\
'sf=1;37:'\
'xa=1;32:'\
'uu=1;34:'\
'un=37:'\
'gu=1;34:'\
'gn=37:'\
'da=37'

alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias dot='cd $HOME/src/github.com/$GITHUB_USER/dotfiles'

alias g='git'
alias gq='ghq'
alias gg='ghq get'

alias e='exa -I "node_modules|.git|.cache|.DS_Store"'
alias ea='e -a'
alias l='e -l'
alias la='e -la'

alias r='source $HOME/.config/fish/config.fish && tmux source $HOME/.tmux.conf'
alias s='ssh'
alias v='nvim'
alias vv='v -c NERDTree -c Tagbar'
alias w='cd $HOME/src/github.com/$GITHUB_USER'

alias y='yarn'
alias ya='yarn add'
alias yd='yarn add --dev'
alias yi='yarn install'
alias yr='yarn remove'

alias fzwiki='fzwiki -l ja -o'

function fish_greeting
  fish_logo blue cyan white
  echo -e "\nWelcome to fish, the friendly interactive shell"
  echo -e "Type \e[34mhelp\e[m for instructions on how to use fish"
end

status --is-interactive; and rbenv init - fish | source
starship init fish | source
