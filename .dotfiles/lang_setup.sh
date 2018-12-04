unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac


source /usr/local/opt/asdf/asdf.sh
asdf plugin-add nodejs
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
echo "Installing NodeJS"
asdf install nodejs 11.3.0
asdf install nodejs 10.14.1
asdf install nodejs 8.14.0
asdf global nodejs 11.3.0

echo "Installing Python"
# brew install pyenv appears to fix python 3 build (2018/12/02)
brew install pyenv

if [ $machine = 'Mac' ]
  then
    # Additional headers needed for Mojave (2018/12/03)
    sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
fi

asdf plugin-add python
asdf install python 3.7.1
asdf install python 2.7.15
asdf global python 3.7.1 2.7.15

echo "Installing GoLang"
asdf plugin-add golang
asdf install golang 1.11
asdf global golang 1.11

