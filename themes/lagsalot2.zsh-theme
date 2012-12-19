
# needs a term with 256 color support - borrowed ideas from all over the place - lagsalot

function show_rvm {
    [ -e ~/.rvm ] && "rvm-prompt" || echo "%{$FG[169]%}no-rvm%{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$FG[117]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[197]%} ●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ●%{$reset_color%}"

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
local dir='$FG[096]% %3~%{$reset_color%}'
local rvminfo='%{$FG[103]%}$(show_rvm)%{$reset_color%}'
local lbracket='%{$FG[232]%}[%{$reset_color%}'
local rbracket='%{$FG[232]%}]%{$reset_color%}'
local at='%{$FG[232]%}@%{$reset_color%}'
local dash='%{$FG[232]%}-%{$reset_color%}'

PROMPT="${lbracket} ${username} ${at} ${hostname} ${rvminfo} ${rbracket}
${lbracket} in ${dir}${git_info} ${rbracket} "
