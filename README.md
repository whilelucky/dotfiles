Symbolic links

    # setup vim
    mv ~/.vim ~/old.vim
    ln -s ~/dotfiles/.vim ~/.vim
    mv ~/.vimrc ~/old.vimrc
    ln -s ~/dotfiles/.vimrc ~/.vimrc

    # installing vim plugins
    vi ~/.vimrc
    :PlugInstall

---

YouCompleteMe, JavaScript auto completer

    # installing YouCompleteMe with tern-completer
    cd ~/dotfiles/.vim/plugged/YouCompleteMe
    ./install.py --tern-completer

    # setup global .tern-config
    ln -s ~/dotfiles/.tern-config ~/.tern-config

---

MacVim for macOS

* Download, open and drag both **MacVim** and **mvim** into the Applications directory
* In a terminal run `mv /Applications/mvim /usr/local/bin/`
* Add `alias vi="mvim -v"` to **.zshrc** or **.bash_profile** or whichever file is relevant to your terminal setup

---

Iterm2 theme/colors/fonts

* Download and install the [nightly build of iterm2](https://www.iterm2.com/downloads.html)
* In the **Preferences** tab goto the **Profiles** tab and select the appropriate **Profile**
* In the **Colors** tab, click on the **Color Presets** dropdown and **import *~/dotfiles/iterm2/onedark.itermcolors***
* Click on the **Color Presets** dropdown and select **onedark**
* Setup the single font as **Fira Code Retina 12pt**
