autoload -Uz compinit
compinit
# ───────────────────── Minimal Zsh Config ─────────────────────

setopt PROMPT_SUBST

# ───────────────────── Shell Options ─────────────────────
setopt AUTO_CD
setopt CORRECT
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# ───────────────────── History Config ─────────────────────
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# Large history size
# Shared history across sessions
setopt SHARE_HISTORY

# No duplicates
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

# Immediate history append
setopt INC_APPEND_HISTORY

# Blank line trimming
setopt HIST_REDUCE_BLANKS

# Search without duplicates
setopt HIST_FIND_NO_DUPS

# History verification before execution
setopt HIST_VERIFY

# ───────────────────── Git branch function ─────────────────────
git_branch() {
    local branch
    branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [[ -n "$branch" ]]; then
        echo "(%F{cyan}${branch}%f)"
    fi
}

# ───────────────────── Prompt ─────────────────────
PROMPT='%n@%m %~ $(git_branch) %# '

# ───────────────────── Safety Aliases ─────────────────────
alias rm='rm -i'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'

# ───────────────────── General Aliases ─────────────────────
alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

alias c='clear'
alias e='exit'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ───────────────────── Git Aliases ─────────────────────
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'


# opencode
export PATH=/home/oshankodagoda/.opencode/bin:$PATH

## IntelliShell
#export INTELLI_HOME="/home/oshankodagoda/.local/share/intelli-shell"
#export INTELLI_CONFIG="~/.config/inshell/config.toml"
## export INTELLI_SEARCH_HOTKEY='^@'
## export INTELLI_VARIABLE_HOTKEY='^l'
## export INTELLI_BOOKMARK_HOTKEY='^b'
## export INTELLI_FIX_HOTKEY='^x'
## export INTELLI_SKIP_ESC_BIND=0
## alias is="intelli-shell"
#export PATH="$INTELLI_HOME/bin:$PATH"
#eval "$(intelli-shell init zsh)"

export PATH="$HOME/.local/bin:$PATH"

alias zen='flatpak run app.zen_browser.zen'
alias brave='flatpak run com.brave.Browser'
alias discord='flatpak run com.discordapp.Discord'
alias chrome='flatpak run com.google.Chrome'
alias obs='flatpak run com.obsproject.Studio'
alias spotify='flatpak run com.spotify.Client'
alias code='flatpak run com.visualstudio.code'
alias obsidian='flatpak run md.obsidian.Obsidian'
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=/usr/local/go/bin:$PATH
export PATH="$PATH:$HOME/go/bin"
