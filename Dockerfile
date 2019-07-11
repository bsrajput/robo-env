from debian:buster
maintainer Abhishek Amralkar

env app         roboenv
env roboenv_dir app
env HOME /opt/${app}

#update the docker
run apt-get install && \
        apt-get update && \
        apt-get install sudo -y
# Set up app
workdir /opt/${app}

copy installers/setup.sh /opt/${app}/
copy installers/* /opt/${app}/
cmd ["/opt/roboenv/setup.sh"]
