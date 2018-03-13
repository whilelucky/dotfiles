Zsh

    # make zsh the default shell
    chsh -s $(which zsh)

    # install ohmyzsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    # symlink .zshrc
    mv ~/.zshrc ~/old.zshrc && ln -s ~/dotfiles/.zshrc ~/.zshrc

    # install zsh plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

---

Iterm2

* Download and install the [nightly build of iterm2](https://www.iterm2.com/downloads.html)
* In the **Preferences** tab goto the **Profiles** tab and select the appropriate **Profile**
* In the **Colors** tab, click on the **Color Presets** dropdown and **import *~/dotfiles/iterm2/onedark.itermcolors***
* Click on the **Color Presets** dropdown and select **onedark**
* Download, install and setup the single font as **[Fira Code Retina](https://github.com/tonsky/FiraCode) 12pt**

---

Vim

    # setup vim
    mv ~/.vim ~/old.vim && ln -s ~/dotfiles/.vim ~/.vim
    mv ~/.vimrc ~/old.vimrc && ln -s ~/dotfiles/.vimrc ~/.vimrc

    # install vim plugins
    vi ~/.vimrc
    :PlugInstall

    # setup YouCompleteMe
    cd ~/dotfiles/.vim/plugged/YouCompleteMe
    ./install.py --tern-completer

    # symlink .tern-config
    ln -s ~/dotfiles/.tern-config ~/.tern-config
