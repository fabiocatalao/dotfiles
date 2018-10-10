if ! is-macos -o ! is-executable brew; then
  echo "Skipped: ZSH"
  return
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L https://iterm2.com/shell_integration/zsh \-o ~/.iterm2_shell_integration.zsh
curl -L git.io/antigen > antigen.zsh

chsh -s $(which zsh)

source ~/.zshrc