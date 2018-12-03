echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your email and press [ENTER]: "
read email

git config --global user.name "$name"
git config --global user.email "$email"


go get github.com/jsha/minica
asdf reshim golang

mcd ~/.ca
minica -ca-cert "localhost-ca.pem" -ca-key "localhost-ca-key.pem"
minica --domains test.localhost

mkdir ~/.ssh
chmod 0700 ~/.ssh
ssh-keygen -t rsa -b 4096 -C "$name $(hostname) <$email>"