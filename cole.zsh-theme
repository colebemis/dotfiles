# To use this zsh theme:
#   1. Copy this file to ~/.oh-my-zsh/themes/cole.zsh-theme
#   2. Add the following to ~/.zshrc: ZSH_THEME="cole"

PROMPT='
$TIME $CONDITIONAL_MACHINE $DIR $(git_prompt_info) $(git_prompt_status)
$PROMPT_SYMBOL '

PROMPT_SYMBOL="%(?.%F{242}.%F{red})❯%f"
SEP="%F{242}•%f"

TIME="%T"
MACHINE="%m"
DIR="%~"

if [[ -n $SSH_CONNECTION ]]; then
  CONDITIONAL_MACHINE="$SEP %B%F{blue}${MACHINE}%f%b $SEP"
else
  CONDITIONAL_MACHINE="$SEP"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="$SEP "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{green}✔%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}✗%f"
ZSH_THEME_GIT_PROMPT_AHEAD="%F{red}↑%f"
ZSH_THEME_GIT_PROMPT_BEHIND="%F{red}↓%f"
