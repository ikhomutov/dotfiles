source ~/.zsh/zplug/init.zsh

zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/pip",   from:oh-my-zsh
zplug "plugins/python",   from:oh-my-zsh
zplug "plugins/celery",   from:oh-my-zsh

zplug "ikhomutov/zsh-auto-venv"
zplug "ikhomutov/zsh-django"
zplug "ikhomutov/zsh-django-restframework"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

if ! zplug check --verbose; then
    zplug install
fi

zplug load

source $HOME/.profile
source $HOME/.aliases

zstyle ':completion:*' rehash true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
