Symbolic links

    # setup vim
    $ cd ~
    $ ln -s ~/dotfiles/.vim .vim
    $ ln -s ~/dotfiles/.vimrc .vimrc

    # setup neovim
    $ cd ~/.config
    $ ln -s ~/dotfiles/.vim nvim

    # installing vim plugins
    $ vi .vimrc
    :PlugInstall

---

YouCompleteMe, JavaScript auto completer

    # installing neovim python modules
    $ sudo easy_install pip
    $ pip install --user neovim

    # installing YouCompleteMe with tern-completer
    $ cd ~/dotfiles/.vim/plugged/YouCompleteMe
    $ ./install.py --tern-completer

---

Iterm2 theme/colors

* Please install the nightly build of iterm2
* In the **Preferences** tab goto the **Profiles** tab
* In the **Colors** tab, click on the **Color Presets** dropdown and import *~/dotfiles/iterm2/base16-oceanicnext.dark.itermcolors*
* Click on the **Color Presets** dropdown and select **base16-oceanicnext.dark**
