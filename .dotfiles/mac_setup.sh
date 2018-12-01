xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

sudo defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/iterm2"
sudo defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

apachectl stop >/dev/null
launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist 2>/dev/null

asdf plugin-add nodejs
asdf plugin-add python
asdf plugin-add golang