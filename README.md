# docker-scuttlebot
Run a scuttlebot server in a Docker container

To run a Pub you need to have a static public IP, ideally with a DNS record (i.e.`<hostname.yourdomain.tld>`)


## Download from Docker Hub

Docker Hub hosts an [automated build](https://hub.docker.com/r/ktorn/docker-scuttlebot/) of this repo so you can simply:

```
docker pull ktorn/docker-scuttlebot
```


## Build from source

#### 1. Clone this repo

_Option 1)_

From GitHub:
```
git clone https://github.com/ktorn/docker-scuttlebot.git
```

_Option 2)_

From Scuttlebot/git-ssb:
```
git clone ssb://%3lz/7Vpw17D3kKdCiaHKQ3upKNMeDKn7EOdL0plhDJU=.sha256 docker-scuttlebot
```

#### 2. Build the container

```sh
cd docker-scuttlebot
docker build -t scuttlebot .
```

## Run the container

#### 1. Create a directory on the docker host for persisting the scuttlebot server's data
```sh
mkdir ~/sbot-data
```

#### 2. Run the container
```sh
docker run --name sbot \
   -d -v ~/sbot-data/:/root/.ssb/ 
   -e HOST="<hostname.yourdomain.tld>" 
   -p 8008:8008 --restart always scuttlebot
```
