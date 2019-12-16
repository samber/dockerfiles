
# Github hub cli

```
docker build -t samber/hub .
docker push samber/hub
```


```
docker run -e GITHUB_TOKEN --rm -it -v $(pwd):/repo samber/hub --help
```
