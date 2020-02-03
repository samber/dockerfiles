
# Headless resilio sync

## Run

```
docker run -d -e KEY=********************** \
              -e SYNC_DIRECTORY=/mnt/whatever \
              -v /tmp/whatever:/mnt/whatever \
              samber/resilio-headless
```

## Build

```
docker build -t samber/resilio-headless .
docker push samber/resilio-headless
```
