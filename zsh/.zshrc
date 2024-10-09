# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# export PATH="~/Library/Developer/CommandLineTools/usr/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="apple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	sublime
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Main aliases
alias alc="cd ~/.config/alacritty/ && nvim alacritty.toml"
alias wc="cd ~/.config/wezterm// && nvim wezterm.lua"
alias c="code . -r"
alias cfg='nvim ~/.zshrc'
alias copypath='pwd|pbcopy'
alias n="nvim"
alias nc='cd ~/.config/nvim/ && nvim'
alias ss="source ~/.zshrc"
alias personal="cd ~/personal/"

# Find project and cd into folder
find() {
  selected_dir=$(cd ~/ && fd -td --max-depth 3 | fzf)
  if [[ -n "$selected_dir" ]]; then
   cd "$HOME/$selected_dir"
  fi
}

pro() {
  selected_dir=$(cd ~/projects && fd -td --max-depth 1 | fzf)
  if [[ -n "$selected_dir" ]]; then
    cd "$HOME/projects/$selected_dir"
    if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
      tmux new -s $selected_dir || tmux attach -t $selected_dir
    fi
  fi
}

pers() {
  selected_dir=$(cd ~/personal && fd -td --max-depth 1 | fzf)
  if [[ -n "$selected_dir" ]]; then
    cd "$HOME/personal/$selected_dir"
    if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
      tmux new -s $selected_dir || tmux attach -t $selected_dir
    fi
  fi
}

fn() {
  selected_dir=$(cd ~/personal && fd -tf --max-depth 3 | fzf)
  if [[ -n "$selected_dir" ]]; then
    nvim "$HOME/personal/$selected_dir"
  fi
}

config() {
  selected_dir=$(cd ~/.config && fd -tf --max-depth 3 | fzf)
  if [[ -n "$selected_dir" ]]; then
    nvim "$HOME/.config/$selected_dir"
  fi
  return
}

# Brew aliases
alias bar='brew autoremove'
alias bc='brew cleanup'
alias bi='brew install'
alias bl='brew list'
alias br='brew remove'
alias bs='brew search'
alias bu='brew update'
alias buc='brew list --cask | xargs -I {} brew upgrade --cask {}'
alias buu='brew upgrade'

# Git aliases
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gc='git checkout'
alias gl='git log'
alias gp='git push'
alias gpl='git pull'
alias gr='git reset'
alias grh='git reset --hard && git clean -f -d'
alias grv='git revert'
alias gs='git status'
alias lg='lazygit'

# ci aliases
alias nt='npx tsc'
alias pn='pnpm'
alias pnd='pnpm run dev'
alias pndd='pnpm run dev:ngnix'
# alias kk="killall node"
# alias kk="pkill -f node && pkill -f next"

# cisco
alias cco="printf '\nigor.tigancov\nXx62445269\ny' | /opt/cisco/anyconnect/bin/vpn -s connect 'vpn1.daac.md'"
alias cdi='/opt/cisco/anyconnect/bin/vpn disconnect'
alias cst='/opt/cisco/anyconnect/bin/vpn state'

# retroradiator ssh
# /var/www/www-root/data/www/retroradiator.ru/bitrix/templates/alpha_s1/less
alias retro="echo '/var/www/www-root/data/www/retroradiator.ru/bitrix/templates/alpha_s1/less' | pbcopy & ~/retro.sh"
alias retropass="echo iBZ#H3K#s5FPza | pbcopy"

# yabai
alias yrestart="yabai --restart-service"
alias ystart="yabai --start-service"
alias ystop="yabai --stop-service"

# skhd
alias srestart="skhd --restart-service"
alias sstart="skhd --start-service"
alias sstop="skhd --stop-service"

# tmux
alias ta="tmux attach -t "
alias tls="tmux ls"
alias ts="tmux new -s "


# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
