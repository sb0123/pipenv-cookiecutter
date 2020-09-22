#!/usr/bin/env sh
(
    echo "\n-> installing xcode: \n"
    if ! [[ -x $(xcode-select -p) ]];
    then 
        xcode-select -s /Applications/Xcode.app/Contents/Developer \
        || (xcodebuild -licence \
            && xcode-select -s /Applications/Xcode.app/Contents/Developer) \
        && xcodebuild -license
    fi
    echo "\n-> xcode installed <-\n"

    echo "\n-> installing xcode cli: \n"
    xcode-select --install \
    && echo "\n-> xcode cli installed <-\n" \
    || echo " "

    echo "\n-> installing homebrew: \n"
    {
        if ! [[ $(brew --version) ]];
        then
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
        fi \
        && echo "\n-> homebrew installed <-\n" \
        && echo "\n-> installing from brew:" \
        && echo "     zsh python3 cmake git htop openssl readline sqlite3 tree unar xz zlib pipx pyenv\n" \
        && {
          brew install zsh
          brew install python3
          brew install awscli
          brew install cmake
          brew install git
          brew install htop
          brew install openssl
          brew install readline
          brew install mysql
          brew install sqlite3
          brew install postgres
          brew install tree
          brew install unar
          brew install xz
          brew install zlib
          brew install pipx
          brew install pyenv
          brew install watch
          brew tap heroku/brew && brew install heroku
        }
    } \
    && echo "\n-> packages installed from brew! <-\n"

    touch ~/.zshrc
    if ! grep -Fxq 'export PYENV_ROOT="$HOME/.pyenv"' ~/.zshrc
    then
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    fi
    if ! grep -Fxq 'export PATH="$PYENV_ROOT:$PATH"' ~/.zshrc
    then
        echo 'export PATH="$PYENV_ROOT:$PATH"' >> ~/.zshrc
    fi
    if ! grep -Fxq 'if command -v pyenv 1>/dev/null 2>&1; then' ~/.zshrc
    then
        echo 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
    fi
    source ~/.zshrc \

    echo "\n-> installing software from homebrew casks:"
    echo "   google-chrome lastpass mysqlworkbench slack sublime-text the-unarchiver whatsapp"
    {
        brew cask install authy
        brew cask install docker
        brew cask install google-chrome
        brew cask install lastpass
        brew cask install mysqlworkbench
        brew cask install pg-commander
        brew cask install sublime-text
        brew cask install the-unarchiver
        pipx ensurepath && source ~/.zshrc
        # Uncomment block if you want to install the microsoft stuff
        echo "\n-> installing microsoft stuff from homebrew casks:"
        echo "   microsoft-edge microsoft-office microsoft-teams"
        brew cask install microsoft-edge
        brew cask install drawio
    } \
    && echo "\n-> installation from homebrew casks successfull <-\n"

    echo "\n-> installing from pipx: "
    echo "   pipenv pipenv-pipes pipenv-setup pre-commit"
    (
        pipx install pipenv \
        && pipx install pipenv-pipes \
        && pipx install pipenv-setup \
        && pipx install pre-commit
    ) \
    && source ~/.zshrc \
    && echo "\n-> pipx installations complete <-" \
    && echo "\n-> configuring git to run pre-commit hooks, when found, automatically:" \
    && git config --global init.templateDir ~/.git-template \
    && pre-commit init-templatedir ~/.git-template -t pre-commit -t pre-push \
    && echo "\n-> pre-commit configured <-"

    echo "\nIf you don't yet know magnet for OSX, you're wasting time resizing windows!"
    echo "Here's the link: https://apps.apple.com/gb/app/magnet/id441258766?mt=12"
    read -p "Do you want to open that link now? [y/n]" -t 5 REPLY
    case $REPLY in
        [yY])
            open "https://apps.apple.com/gb/app/magnet/id441258766?mt=12"
        ;;
        *)
        ;;
    esac
) \
&& (
    echo "\n"
    echo "================== INSTALLATION COMPLETE! =================="
    echo "CLOSE ALL TERMINAL WINDOWS AND REOPEN TO ENSURE CORRECT PATH"
    echo "================== INSTALLATION COMPLETE! =================="
    echo "\n"
) && osascript -e 'tell application "Terminal" to close (every window)' && exit 0 || exit 1
