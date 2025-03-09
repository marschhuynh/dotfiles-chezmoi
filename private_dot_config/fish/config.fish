# Make python3.8 become default
# if test -f $HOME/Library/Python/3.8/bin; set -gx PATH $HOME/Library/Python/3.8/bin:$PATH; end

set -gx GOPATH $HOME/GoWSpace
set -gx GRADLE_HOME $HOME/Gradle/bin
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

# For non-sudo npm
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $PATH $NPM_PACKAGES/bin
set MANPATH $NPM_PACKAGES/share/man $MANPATH

set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx ANDROID_SDK_TOOLS $ANDROID_HOME/platform-tools
set -gx STUDIO_JDK /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk

set -gx WORKON_HOME $HOME/.virtualenvs
set -gx PROJECT_HOME $HOME/Projects

set -gx POSTGRES "/Applications/Postgres.app/Contents/Versions/latest/bin"

set -gx PIP_FORMAT columns

set -gx PATH /opt/homebrew/bin:~/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:$GOPATH/bin:$GRADLE_HOME:$ANDROID_HOME:$ANDROID_SDK_TOOLS:/usr/local/sbin:$POSTGRES:$HOME/Tools
set -gx PATH "/usr/local/opt/node@12/bin:$PATH"
set -gx PATH "$HOME/Tools/flutter/bin:$PATH"
set -gx PATH "$HOME/connectiq-sdk/bin:$PATH"
set -gx PATH "$HOME/.gem/ruby/2.6.0/bin:$PATH"
set -gx PATH "$HOME/.cargo/bin:$PATH"
set -gx PATH /snap/bin:$PATH
set -gx PATH $HOME/.yarn/bin:$PATH
set -gx PATH $HOME/Library/Python/3.9/bin:$PATH
set -gx PATH $ANDROID_HOME/tools/bin:$PATH
set -gx PATH $ANDROID_HOME/emulator:$PATH
set -gx PATH $HOME/.local/bin:$PATH

set -gx PATH $HOME/.npm-global/bin:$PATH

set -gx AIRFLOW_HOME "~/airflow"
set -gx GEM_HOME "$HOME/.gem"

set -gx REACT_EDITOR windsurf
set -gx IP_CURRENT (ipconfig getifaddr en0)

#alias ls "colorls"
alias vim nvim
alias dc docker-compose
alias dk docker
alias rand "echo (openssl rand -base64 32 | sed -e 's/=//')"
alias rei "react-native run-ios"

alias gits "git status"
alias gitc "git checkout"
alias gitcm "git commit"

alias rea "react-native run-android"

alias dore 'ssh -q -N -f blackbox-docker'
alias doremon "export DOCKER_HOST='localhost:2376'"
alias doremoff "export DOCKER_HOST=''"
alias tf terraform
alias lz lazygit

alias change-mac-add "sudo ifconfig en0 ether (openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.\$//')"
#set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
zoxide init fish | source
set -g fish_user_paths "/usr/local/opt/python@3.8/bin" $fish_user_paths

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

set -gx PNPM_HOME $HOME/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH

starship init fish | source
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f $HOME/anaconda3/bin/conda
    eval $HOME/anaconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<


# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

eval "$(/opt/homebrew/bin/brew shellenv)"
status --is-interactive; and rbenv init - fish | source

# pyenv init - | source


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH


# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.fish.inc' ]
    . '$HOME/google-cloud-sdk/path.fish.inc'
end


# Fish syntax highlighting
set -g fish_color_autosuggestion 555 brblack
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow --bold
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow '--background=brblack'
set -g fish_color_selection white --bold '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline
# Added by LM Studio CLI (lms)
set -gx PATH $PATH $HOME/.cache/lm-studio/bin

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :


fzf --fish | source
