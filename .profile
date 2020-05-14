alias ls='lsd'
alias l='lsd'
alias ll='lsd -la'

export ANDROID_HOME=$HOME/.android/sdk
CARGO_HOME=$HOME/.cargo
DART_SDK=$HOME/.dart-sdk
FLUTTER_SDK=$HOME/.flutter-sdk

export PATH=$PATH:$HOME/.local/share/scripts

export PATH=$PATH:$CARGO_HOME/bin
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src

export PATH=$PATH:$DART_SDK/bin

export PATH=$FLUTTER_SDK/bin:$PATH

export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

ANDROID_TOOLCHAINS=$HOME/.android/toolchains
export PATH=$ANDROID_TOOLCHAINS/arm/bin:$PATH
export PATH=$ANDROID_TOOLCHAINS/arm64/bin:$PATH
export PATH=$ANDROID_TOOLCHAINS/x86/bin:$PATH
export PATH=$ANDROID_TOOLCHAINS/x86_64/bin:$PATH

export GPG_TTY=$(tty)

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null
