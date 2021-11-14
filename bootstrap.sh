#!/usr/bin/env zsh

# bootsrapping files for system setup
# systemcheck



clear
echo "Bootstrap installation files\n"

OSTYPE="$(uname -s)"

case $OSTYPE in
  'Darwin')
    OS='macOS'
    CPUTYPE="$(uname -p)"
    if [[ "$CPUTYPE" == "arm64" ]]
    then
      CPU="Apple"
    else
      CPU="Intel"
    fi
    ;;
  'Linux')
    OS='linux'
    ;;
  *)
    ;;
esac

echo "Systemcheck\n"
echo "-----------\n"
echo "OS:  $OS"
echo "CPU: $CPU"

/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/keepkode/install/main/setup/macOS.sh)"
# set ZDOTDIR to $HOME/.config/zsh
# sed -i '' -e '1s/^/# Setup ZDOTDIR\nZDOTDIR=$HOME\/\.config\/zsh\n/'
