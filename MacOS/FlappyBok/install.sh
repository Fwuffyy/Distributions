#!/bin/bash
IMAGE_NAME="FlappyBok.dmg" && INSTALL_VERSION="${1:-1.0.1-arm64}" && INSTALL_URL="http://github.com/ChezCoder/Distributions/blob/main/MacOS/FlappyBok/v$INSTALL_VERSION.zip?raw=true" && builtin echo -e "\033[32mPreparing to install FlappyBok v$INSTALL_VERSION \033[0m" && touch "$HOME/Desktop/$IMAGE_NAME" && builtin echo -e "\033[32mDownloading files...\033[0m" && cd && curl -L $INSTALL_URL --output payload && builtin echo -e "\033[32mExpanding...\033[0m" && unzip -q -o payload -x "__MACOSX/*" && builtin echo -e "\033[32mInstalling...\033[0m" && xattr -d -r com.apple.quarantine "v$INSTALL_VERSION/$IMAGE_NAME" && mv "v$INSTALL_VERSION/$IMAGE_NAME" "$HOME/Desktop/$IMAGE_NAME" && rm -r -f "v$INSTALL_VERSION" && open "$HOME/Desktop/$IMAGE_NAME" && exit 0;builtin echo -e "\033[31mSomething went wrong while installing, installation stopped.\033[0m" && rm -r -f "v$INSTALL_VERSION" && rm -f "$HOME/Desktop/$IMAGE_NAME" && rm -r -f "payload" && exit 1;