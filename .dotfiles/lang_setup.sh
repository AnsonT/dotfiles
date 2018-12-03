source /usr/local/opt/asdf/asdf.sh
asdf plugin-add nodejs
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 11.3.0
asdf install nodejs 10.14.1
asdf install nodejs 8.14.0
asdf global nodejs 11.3.0

asdf plugin-add python
asdf install python 3.7.1
asdf install python 2.7.15
asdf global python 3.7.1 2.7.15

asdf plugin-add golang
asdf install golang 1.11
asdf global golang 1.11

