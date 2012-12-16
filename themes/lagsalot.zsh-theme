# Fino-time theme by Aexander Berezovsky (http://berezovsky.me) based on Fino by Max Masnick (http://max.masnick.me)

# Use with a dark background and 256-color terminal!
# Meant for people with RVM and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function prompt_char {
    echo '$'
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname
}

function show_rvm {
    [ -f ~/.rvm ] && "rvm-prompt" || echo "%{$FG[169]%}no-rvm%{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX="\n|  [ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} ]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[197]%} ●●●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ●●●%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[038]%}☯  %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚  %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[227]%}✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[043]%}➝  %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}◀◀◀ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}✚ %{$reset_color%}"

local git_info='$(git_prompt_info) $(git_prompt_status)'

PROMPT="╭─ [ %{$FG[040]%}%n%{$reset_color%}%{$FG[060]%} ➤ %{$FG[033]%}%M%{$reset_color%} ] [ %{$FG[243]%}$(show_rvm) ]${git_info}
╰─ [ $FG[069]% %3~%{$reset_color%} ] "

# This is needed to show git info in tmux status bar
PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
