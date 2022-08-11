#!/bin/bash
INSTALL_VERSION="1.6.9" && INSTALL_URL="http://github.com/ChezCoder/Distributions/blob/main/MacOS/Rollaball/v$INSTALL_VERSION.zip?raw=true" && builtin echo -e "\033[32mPreparing to install Rollaball v$INSTALL_VERSION \033[0m" && builtin echo -e "\033[32mDownloading files...\033[0m" && cd && curl -L $INSTALL_URL --output payload && builtin echo -e "\033[32mExpanding...\033[0m" && unzip -q -o payload && builtin echo -e "\033[32mInstalling...\033[0m" && xattr -d -r com.apple.quarantine "v$INSTALL_VERSION/balls.app" && mv "v$INSTALL_VERSION/balls.app" ~/Desktop/balls.app && rm -f -r "__MACOSX" && rm -f -r "v$INSTALL_VERSION" && rm -r -f "payload" && builtin echo -e "\033[32mInstalled to Desktop!\033[0m" && exit 0;  builtin echo -e "\033[31mSomething went wrong while installing, installation stopped." && rm -r -f "v$INSTALL_VERSION" && rm -r -f "balls.app" && rm -r -f "__MACOSX" && rm -r -f "payload" && exit 1;