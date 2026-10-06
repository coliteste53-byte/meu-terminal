FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y ttyd bash curl git && rm -rf /var/lib/apt/lists/*
EXPOSE 10000
CMD ["ttyd", "-p", "10000", "-W", "bash"]
