# dotfiles
To setup a new Macbook

## Run install
Download zip and extract in home directory.

```
sh install.sh
```


## Create new SSH key
```
ssh-keygen -t ed25519 -C "email@email.com" -f ~/.ssh/id_ed25519
eval "$(ssh-agent -s)"
touch ~/.ssh/config
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
run 'pbcopy < ~/.ssh/id_ed25519.pub
```

