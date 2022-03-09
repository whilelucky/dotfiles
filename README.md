Zsh

    # make zsh the default shell
    chsh -s $(which zsh)

    # install ohmyzsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # symlink .zshrc
    mv ~/.zshrc ~/old.zshrc && ln -s ~/workspace/github/dotfiles/.zshrc ~/.zshrc

    # install zsh plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

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
