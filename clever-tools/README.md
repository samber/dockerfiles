
# samber/clever-tools

Built from [CleverCloud/clever-tools](https://github.com/CleverCloud/clever-tools).

Based on debian:stretch-slim Docker image.

## Build

```
docker build -t samber/clever-tools:0.10.1 .
docker push samber/clever-tools:0.10.1
```

## Run

```
docker run --rm -it \
	-v $(pwd):/app \
	-v ~/.config:/root/.config \
	samber/clever-tools:0.10.1 \
	login
```
