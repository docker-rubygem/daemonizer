FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.0.beta.1

RUN gem install daemonizer --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["daemonizer"]
CMD ["--help"]
