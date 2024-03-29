echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your email and press [ENTER]: "
read email

git config --global user.name "$name"
git config --global user.email "$email"
git config --global pull.rebase false

go get github.com/jsha/minica
asdf reshim golang

mkdir ~/.ca
cd ~/.ca
minica -ca-cert "localhost-ca.pem" -ca-key "localhost-ca-key.pem" --domains "test.localhost"

mkdir ~/.ssh
chmod 0700 ~/.ssh
ssh-keygen -t rsa -b 4096 -C "$name $(hostname) <$email>"

broot --install