Symbolic links

    # setup vim
    $ mv ~/.vim ~/old_.vim
    $ ln -s ~/dotfiles/.vim ~/.vim
    $ mv ~/.vimrc ~/old_.vimrc
    $ ln -s ~/dotfiles/.vimrc ~/.vimrc

    # setup neovim
    $ mv ~/.config/nvim ~/.config/old_nvim
    $ ln -s ~/dotfiles/.vim ~/.config/nvim

    # installing vim plugins
    $ vi ~/.vimrc
    :PlugInstall

---

YouCompleteMe, JavaScript auto completer

    # installing neovim python modules
    $ sudo easy_install pip
    $ pip install --user neovim

    # installing YouCompleteMe with tern-completer
    $ cd ~/dotfiles/.vim/plugged/YouCompleteMe
    $ ./install.py --tern-completer

    # setup global .tern-config
    $ ln -s ~/dotfiles/.tern-config ~/.tern-config

---

Iterm2 theme/colors

* Please install the  [nightly build of iterm2](https://www.iterm2.com/downloads.html)
* In the **Preferences** tab goto the **Profiles** tab and select the appropriate **Profile**
* In the **Colors** tab, click on the **Color Presets** dropdown and import *~/dotfiles/iterm2/base16-oceanicnext.dark.itermcolors*
* Click on the **Color Presets** dropdown and select **base16-oceanicnext.dark**
