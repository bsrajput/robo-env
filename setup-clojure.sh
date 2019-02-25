#!/bin/sh
# install clojure and lein
CLOJURE_VERSION=1.10.0.411
curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo chmod 755 lein && sudo mv lein /usr/bin
curl -O https://download.clojure.org/install/linux-install-${CLOJURE_VERSION}.sh
chmod +x linux-install-${CLOJURE_VERSION}.sh
sudo ./linux-install-${CLOJURE_VERSION}.sh

sudo apt-get install rlwrap -y
