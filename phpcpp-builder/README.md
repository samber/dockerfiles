
# samber/phpcpp-builder

Based on debian:stretch Docker image.

Simple image with everything needed to build php-cpp extensions.

## Build

```
docker build -t samber/phpcpp-builder:7.2-2.1.1 .
docker push samber/phpcpp-builder:7.2-2.1.1
```

## Run

```
docker run --rm -it \
	-v $(pwd):/app \
  --working-dir /app
	samber/phpcpp-builder:7.2-2.1.1 \
	<command-to-build-your-extension>
```
