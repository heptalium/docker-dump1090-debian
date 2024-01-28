FROM debian:bookworm
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -o APT::Install-Recommends=false -y dump1090-mutability && rm -rf /var/lib/apt/lists/*
CMD ["/usr/bin/dump1090-mutability", "--net", "--mlat", "--quiet"]
EXPOSE 30002
