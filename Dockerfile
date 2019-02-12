FROM python:2.7
MAINTAINER Steve Wong

# set working directory for any RUN, COPY, CMD that follow
WORKDIR /srv/www

COPY index.html .

# tell Docker that the app in this container listens on this port 
EXPOSE 8080

CMD [ "python", "-m", "SimpleHTTPServer", "8080" ]

# docker build -t docwebserv:latest .

# remove files after run, run interactive with terminal, specify a name, remap port
# docker run --rm -it --name my-docwebservinstance -p 80:8080 docwebserv


