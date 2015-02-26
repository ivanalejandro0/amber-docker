FROM debian:8

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
                    rubygems ruby-dev build-essential zlib1g-dev

RUN gem install amber

# HACK: this change is needed in order to access the site from outside the container.
RUN sed -e "s/:BindAddress => '127.0.0.1'/:BindAddress => '0.0.0.0'/" -i /var/lib/gems/2.1.0/gems/amber-0.3.6/lib/amber/server.rb

WORKDIR /code

EXPOSE 8000

ENTRYPOINT ["amber"]
