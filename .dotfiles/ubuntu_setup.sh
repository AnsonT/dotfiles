sudo apt-get install build-essential cmake

wget https://github.com/sharkdp/bat/releases/download/v0.9.0/bat_0.9.0_amd64.deb
dpkg -i bat_0.9.0_amd64.deb

curl -sSf https://static.rust-lang.org/rustup.sh | sh
cargo install exa


# install unbuffer
sudo apt-get install expect-dev
