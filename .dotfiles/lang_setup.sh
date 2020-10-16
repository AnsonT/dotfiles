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
asdf install nodejs 10.22.0
asdf install nodejs 8.17.0
asdf install nodejs 12.16.1
asdf install nodejs 14.7.0
asdf global nodejs 12.16.1

curl -o- -L https://yarnpkg.com/install.sh | bash

echo "Installing Python"
# brew install pyenv appears to fix python 3 build (2018/12/02)
brew install pyenv

if [ $machine = 'Mac' ]
  then
    # Additional headers needed for Mojave (2018/12/03)
    sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
fi

asdf plugin-add python
asdf install python 3.8.2
asdf install python 2.7.18
asdf global python 3.8.2 2.7.18

echo "Installing GoLang"
asdf plugin-add golang
asdf install golang 1.14.2
asdf global golang 1.14.2

echo "Installing Java"
asdf plugin-add java
asdf install java openjdk-11.0.1
asdf global java openjdk-11.0.1