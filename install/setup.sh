#!/bin/bash
gcc
#%%%%%%%%%%%%%%%%%
#     brew	 %
#%%%%%%%%%%%%%%%%%
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

#%%%%%%%%%%%%%%%%%
# brew some beer %
#%%%%%%%%%%%%%%%%%
brew cask install spotify iterm2 z

#%%%%%%%%%%%%%%%%%
#      git       %
#%%%%%%%%%%%%%%%%%
brew install git
sh ~/.dotfiles/install/scripts/git.sh 

#%%%%%%%%%%%%%%%%%
#   oh-my-zsh    %
#%%%%%%%%%%%%%%%%%
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh ~/.dotfiles/install/scripts/zsh.sh

#%%%%%%%%%%%%%%%%%
#   spacemacs    %
#%%%%%%%%%%%%%%%%%
sh $HOME/.dotfiles/install/scripts/spacemacs.sh
