# Fino-time theme by Aexander Berezovsky (http://berezovsky.me) based on Fino by Max Masnick (http://max.masnick.me)

# Use with a dark background and 256-color terminal!
# Meant for people with RVM and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function show_rvm {
    [ -e ~/.rvm ] && "rvm-prompt" || echo "%{$FG[169]%}no-rvm%{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$FG[173]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[197]%} ●●●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[197]%} ●%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ●●●%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[038]%} ☯%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[046]%} ✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[196]%} ✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[043]%} ➝%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%} ◀◀%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%} ⁉%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_STASHED=' S'
ZSH_THEME_GIT_PROMPT_AHEAD=' L-'
ZSH_THEME_GIT_PROMPT_BEHIND=' L+'
ZSH_THEME_GIT_PROMPT_DIVERGED=' diverged '
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=' R-'
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=' R+'

local git_info='$(git_prompt_info)$(git_prompt_status)$(git_remote_status)'
local username='%{$FG[040]%}%n%{$reset_color%}'
local hostname='%{$FG[033]%}%M%{$reset_color%}'
local arrow='%{$FG[060]%}➞%{$reset_color%}'
local dir='$FG[069]% %3~%{$reset_color%}'
local rvminfo='%{$FG[103]%}$(show_rvm)%{$reset_color%}'

PROMPT="[ ${username}@${hostname} - ${rvminfo} ]
[ in ${dir}${git_info} ] "
