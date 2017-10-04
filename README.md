# QSUS Rails App Summary
Operating System:
- Ubuntu 16.04.3

Dokku Setup
- dokku main
- postgres - beta - official
- letsencrypt - beta - official

## Running the app
```
git clone https://github.com/lriverawong/dokku-qsus
# <Do your changes>
git remote add dokku dokku@<our-ip>:qsus
git push dokku master
```
And that's it! That simple!
For any questions regarding our IP and getting you permissions to
push to the server send me your ssh key (public) and I will add you in.

# Dokku Rails App Server Setup - System Admin Business
## App setup
- Setup boostrap and query with:
  - https://github.com/twbs/bootstrap-sass

## VPS Setup
Ubuntu 16.04.3 x64 <br>
Update repositories and install essential packages.
```
apt update && apt install git curl wget htop sysstat sudo bzip2 rsync
```
ZSH setup
```
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
Vim configuration
```
" The most basic .vimrc  
" spaces not tabs  
filetype plugin indent on  
" show existing tab with 4 spaces width  
set tabstop=2  
" when indenting with '>', use 4 spaces width  
set shiftwidth=2  
" On pressing tab, insert 4 spaces  
set expandtab  
" set line numbers by default  
set number  
" syntax highlighting  
syntax on  
" clipboard setting - for system - this sets  
" the default behaviour of vim to copy anything to  
" the system clipboard not the vim buffer  
set clipboard=unnamedplus
```
Setup ssh for needed users
```
ssh-copy-id <user>@<server-id>
```

## Actual App Deployment
- deployment setup combination of the two:
  - http://www.rubyfleebie.com/how-to-use-dokku-on-digitalocean-and-deploy-rails-applications-like-a-pro/
  - http://dokku.viewdocs.io/dokku/deployment/application-deployment/
- http://dokku.viewdocs.io/dokku/configuration/domains/

## SSL Certificate
- https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-16-04 <-- has a problem with nginx
- https://github.com/dokku/dokku-letsencrypt <-- actually worked
  - original found article before finding git repo
   - https://medium.com/@pimterry/effortlessly-add-https-to-dokku-with-lets-encrypt-900696366890
