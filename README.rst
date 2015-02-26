Amber in a docker container
===========================

Dockerfile for https://github.com/leapcode/amber

$ docker build -t test/amber .  # build the image
$ docker run -t -i --rm -p 8000:8000 -v `pwd`:/code/ test/amber build   # build the pages
$ docker run -t -i --rm -p 8000:8000 -v `pwd`:/code/ test/amber server  # serve on localhost, port 8000
