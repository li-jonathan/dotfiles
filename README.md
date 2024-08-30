# dotfiles
To setup a new Macbook


## Create new SSH key to clone dotfiles repo
```
ssh-keygen -t ed25519 -C "email@email.com" -f ~/.ssh/id_ed25519
eval "$(ssh-agent -s)"
touch ~/.ssh/config
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
echo "run 'pbcopy < ~/.ssh/id_ed25519.pub' and paste that into GitHub"
```
