# To use this zsh theme:
#   1. Copy this file to ~/.oh-my-zsh/themes/cole.zsh-theme
#   2. Add the following to ~/.zshrc: ZSH_THEME="cole"

PROMPT='
%B$TIME $CONDITIONAL_MACHINE $DIR $(git_prompt_info) $(git_prompt_status)
$PROMPT_SYMBOL%b '

PROMPT_SYMBOL="%(?.%F{248}.%F{red})❯%f"
SEP="%F{248}•%f"

TIME="%T"
MACHINE="%m"
DIR="%~"

# Show machine name if ssh'd into remote machine
if [[ -n $SSH_CONNECTION ]]; then
  CONDITIONAL_MACHINE="$SEP %F{blue}${MACHINE}%f $SEP"
else
  CONDITIONAL_MACHINE="$SEP"
fi

# Git info
ZSH_THEME_GIT_PROMPT_PREFIX="$SEP "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{green}✔%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}✗%f"
ZSH_THEME_GIT_PROMPT_AHEAD="%F{242}↑%f "
ZSH_THEME_GIT_PROMPT_BEHIND="%F{242}↓%f "
