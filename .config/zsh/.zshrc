#            _              
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|
#                           
#  By Druskus
#

# Enable colors and change prompt:
autoload -U colors && colors
source $HOME/.config/zsh/themes/rainbowie-pl.zsh-theme

# History in cache directory:
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# I think this autocompletes from the middle of the word
zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'


# Emacs mode
bindkey -e
export KEYTIMEOUT=1

# Keybindings 
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


# Zsh syntax hightlighting fix
export ZSH_HIGHLIGHT_MAXLENGTH=100

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Various exports
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Other rc
unsetopt flow_control    # Disable Ctrl+S and Ctrl+Q (in zsh)


# Load plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh 

# Keysbindings for plugins
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


setopt AUTO_LIST               # automatically list choices on ambiguous completion
setopt AUTO_MENU               # show completion menu on a successive tab press
setopt AUTO_PARAM_SLASH        # if completed parameter is a directory, add a trailing slash
# setopt AUTO_PUSHD              # `cd` pushes directories to the directory stack
setopt COMPLETE_IN_WORD        # complete from the cursor rather than from the end of the word

setopt HIST_VERIFY             # if a command triggers history expansion, show it instead of running
setopt INTERACTIVE_COMMENTS    # allow comments in command line
setopt NO_BANG_HIST            # disable old history syntax
setopt PATH_DIRS               # perform path search even on command names with slashes
# setopt SHARE_HISTORY           # write and import history on every command
setopt C_BASES                 # print hex/oct numbers as 0xFF/077 instead of 16#FF/8#77

unsetopt MENU_COMPLETE        # do not autoselect the first completion entry
setopt AUTO_MENU              # show completion menu on successive tab press

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY	 

setopt ALWAYS_TO_END
