# docker-scuttlebot
Run a scuttlebot server in a Docker container

To run a Pub you need to have a static public IP, ideally with a DNS record (i.e.`<hostname.yourdomain.tld>`)

#### 1. Clone this repo
```sh
git clone https://github.com/ktorn/docker-scuttlebot.git
```

#### 2. Build the container

```sh
cd docker-scuttlebot
docker build -t scuttlebot .
```

#### 3. Create a directory on the docker host for persisting the scuttlebot server's data
```sh
mkdir ~/sbot-data
```

#### 4. Run the container
```sh
docker run --name sbot -d -v ~/sbot-data/:/root/.ssb/ -e HOST="<hostname.yourdomain.tld>" -p 8008:8008 --restart always scuttlebot
```
