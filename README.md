# My personal dotfiles 

### FAQ
#### How do you manage your dotfiles
I use a git bare repository, you can see how looking at my .local/bin/dots script

How is it that you have a README.md file without it being on your home directory

`git update-index --assume-unchanged "$HOME/README.md"`

After that, you can delete the README file and edit it through github if needed, this method of course, works aswell for my screenshots

