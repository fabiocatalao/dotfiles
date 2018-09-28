if ! is-macos -o ! is-executable brew; then
  echo "Skipped: ZSH"
  return
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s $(which zsh)

source ~/.zshrc