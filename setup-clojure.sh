#!/bin/sh
# Author: Abhishek Anand Amralkar
# This script installs Clojure and Lein.

CLOJURE_VERSION=1.10.0.411
LEIN_BIN="/usr/bin/lein"
CLJ_BIN="/usr/local/bin/clojure"

install_leingen () {
    if [ ! -e "$LEIN_BIN" ];
    then
      curl-O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && sudo chmod 755 lein && sudo mv lein /usr/bin
    else
      echo "Lein is installed"
      fi
}


install_clojure () {
    if [ ! -e "$CLJ_BIN" ];
    then curl -O https://download.clojure.org/install/linux-install-${CLOJURE_VERSION}.sh && chmod +x linux-install-${CLOJURE_VERSION}.sh && sudo ./linux-install-${CLOJURE_VERSION}.sh
    else
        echo "Clojure is installed"
        fi
}

main () {
    install_leingen
    install_clojure
}
