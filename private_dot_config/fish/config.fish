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

alias vim nvim
alias dc docker-compose
alias dk docker
alias rand "echo (openssl rand -base64 32 | sed -e 's/=//')"

alias gs "git status"
alias gc "git checkout"
alias gd "git diff"
alias gfa "git fetch --all"

alias tf terraform
alias lz lazygit

zoxide init fish | source

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

set -gx PNPM_HOME $HOME/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH

starship init fish | source

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH


# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.fish.inc' ]
    . '$HOME/google-cloud-sdk/path.fish.inc'
end


# Added by LM Studio CLI (lms)
set -gx PATH $PATH $HOME/.cache/lm-studio/bin

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :


fzf --fish | source

# Added by Windsurf
set -gx PATH $PATH $HOME/.codeium/windsurf/bin
