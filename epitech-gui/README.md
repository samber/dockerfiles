
# epitechcontent/epitest-docker with support for GUI project

## Setup

Append to your ~/.bashrc:

```
alias fedora='docker run --rm -it -v $(pwd):/app -w /app epitechcontent/epitest-docker /bin/bash'
alias fedora-gui='docker run --rm -it -v $(pwd):/app -w /app -p 5900-6000:5900-6000 samber/epitech-gui /bin/bash'
```

Install a VNC client (such as [VNC Viewer](https://www.realvnc.com/en/connect/download/viewer/)).

## Run

```
$ cd student-project/
$ fedora-gui
Starting VNC Server
VNC Server started

Starting VNC web client on port 5980
VNC web client started on port 5980

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 VNC PASSWORD: epitech
 Web client: http://localhost:5980
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

[root@246805b5e9dc app]# java -cp target/currency-converter-1.0.0.jar Main
```

From your VNC client, connect to localhost:5900 with "epitech" password.

## Web client

Just open [http://localhost:5980](http://localhost:5980) ;)
