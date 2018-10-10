if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  calibre
  datagrip
  deluge
  dropbox
  firefox
  flux
  flycut
  google-chrome
  google-drive
  intellij-idea
  iterm2
  java
  microsoft-office
  onedrive
  paintbrush
  phpstorm
  postman
  skype
  slack
  sourcetree
  spetacle
  transmit
  unrarx
  vagrant
  veracrypt
  virtualbox
  visual-studio-code
  vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook qlvideo
