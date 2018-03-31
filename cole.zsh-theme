# To use this zsh theme:
#   1. Copy this file to ~/.oh-my-zsh/themes/cole.zsh-theme
#   2. Add the following to ~/.zshrc: ZSH_THEME="cole"

PROMPT='
${TIME} ${DIVIDER} ${MACHINE} ${DIVIDER} ${DIR} $(git_prompt_info)
%(?.%F{242}.%F{red})${PROMPT_SYMBOL}%f '

PROMPT_SYMBOL="❯"
DIVIDER="%F{242}•%f"

TIME="%T"
MACHINE="%m"
DIR="%~"

ZSH_THEME_GIT_PROMPT_PREFIX="${DIVIDER} "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{green}✔%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}✗%f"

