Amber in a docker container
===========================

Dockerfile for  [ivanalejandro0/amber](https://registry.hub.docker.com/u/ivanalejandro0/amber/)

Github project page for amber: https://github.com/leapcode/amber

You can use this as follows:

```
$ docker pull ivanalejandro0/amber
$ docker run -t -i --rm -p 8000:8000 -v `pwd`:/code/ test/amber build   # build the pages
$ docker run -t -i --rm -p 8000:8000 -v `pwd`:/code/ test/amber server  # serve on localhost, port 8000
```

If you make changes and you want to test it building the image use the following steps:

```
$ docker build -t test/amber .  # build the image
$ docker run -t -i --rm -p 8000:8000 -v `pwd`:/code/ test/amber build   # build the pages
$ docker run -t -i --rm -p 8000:8000 -v `pwd`:/code/ test/amber server  # serve on localhost, port 8000
```
