## micoli dotfiles
---------------

### yadm installation
* https://thelocehiliosan.github.io/yadm/docs/install
* `sudo curl -fLo /usr/local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && sudo chmod a+x /usr/local/bin/yadm`

### yadm clone of this repository 
* `yadm clone https://github.com/micoli/dotfiles`

or if ssh/id_rsa exists 
* `yadm clone git@github.com:micoli/dotfiles.git`


### Zsh installation
* `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
* _or_
* `sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

### Zsh addons installation
* `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
* `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`
* `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### Others
* `brew install yadm`
* `brew install kubectx`
* `brew install kubens`
* `brew install autojump`
* `brew install zsh-kubectl-prompt`
* `gcloud install;  gcloud init; gcloud components install kubectl`
