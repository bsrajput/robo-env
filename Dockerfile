FROM debian:buster
MAINTAINER Abhishek Amralkar

ENV app roboenv
ENV HOME /opt/${app}

# Set up app
RUN mkdir -p /opt/roboenv
WORKDIR /opt/roboenv

COPY installers/setup.sh /opt/roboenv/setup.sh
COPY installers/setup-package.sh /opt/roboenv/setup-package.sh

CMD ["/opt/roboenv/setup.sh"]
