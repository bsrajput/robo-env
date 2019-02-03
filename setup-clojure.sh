#!/bin/sh
# install clojure and lein
curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo chmod 755 lein && sudo mv lein /usr/bin
curl -O https://download.clojure.org/install/linux-install-1.10.0.411.sh
chmod +x linux-install-1.10.0.411.sh
sudo ./linux-install-1.10.0.411.sh
