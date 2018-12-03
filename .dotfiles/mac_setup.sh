xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

sudo defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/iterm2"
sudo defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

sudo apachectl stop >/dev/null
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist 2>/dev/null

./lang_setup.sh
./common_setup.sh