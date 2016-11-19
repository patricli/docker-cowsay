FROM debian:jessie
Expose 8877


RUN apt-get update && apt-get install -y cowsay
COPY docker.cow /usr/share/cowsay/cows/docker.cow

ENTRYPOINT ["/usr/games/cowsay","-f","docker"]
CMD ["moby","dock"]
