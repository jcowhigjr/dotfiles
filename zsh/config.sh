source $DOTFILES/zsh/completion.sh  # completions
source $DOTFILES/zsh/git.sh         # custom version of the oh-my-zsh git plugin
source $DOTFILES/zsh/prompt.sh      # load my EPIC prompt

# vendor
source $DOTFILES/zsh/vendor/syntax_highlighting.zsh
source $DOTFILES/zsh/vendor/git_flow_completion.zsh
source $DOTFILES/zsh/vendor/substring_search.zsh
source $DOTFILES/zsh/vendor/rake_completion.zsh

setopt prompt_subst                 # allows variable substitution in the prompt
setopt nobeep                       # i hate beeps
setopt interactivecomments          # escape commands so i can use them later (allow comments after commands)
setopt rmstarwait                   # if `rm *` wait 10 seconds before performing it!
setopt listtypes                    # show types in completion
setopt auto_cd                      # if a command is not in the hash table, and there exists an executable directory by that name, perform the cd command to that directory.
setopt cdablevars                   # with CDABLEVARS, if the argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory.
setopt share_history                # share command history data
setopt no_auto_name_dirs            # see: http://www.neactar.com/shell/fix-for-wrong-prompt-dir-when-using-zsh-project-rvmrc-and-oh-my-zsh
setopt hist_ignore_dups             # ignore duplication command history list
setopt hist_verify
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt multios
setopt extended_history
setopt append_history
setopt inc_append_history

autoload colors; colors;

# option + right/left
bindkey "\e\e[C" vi-forward-word
bindkey "\e\e[D" vi-backward-word

# make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

# start tetris on ctrl+t (http://twitter.com/Lenary/status/18590249264)
autoload -U tetris
zle -N tetris
bindkey '^T' tetris

WORDCHARS=''

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

ZSH_HIGHLIGHT_STYLES+=(
  unknown-token           'bg=red,bold'
  alias                   'fg=magenta,bold'
  single-quoted-argument  'fg=green,bold'
  double-quoted-argument  'fg=green,bold'
  builtin                 'fg=yellow,bold'
  function                'fg=yellow,bold'
)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf' 'fg=red,bold,bg=white')

# Show time a command took if over 4 sec
# https://github.com/bjeanes/dot-files/commit/1ae5bc72dac6d5f2cdfbf5a48fdf140c5d085986
export REPORTTIME=4
export TIMEFMT="%*Es total, %U user, %S system, %P cpu"
