Centos 7 Docker Box
===================

## Prerequisites

Install the latest vagrant and virtual box. You can download from the respective websites or install using something like
brew.

```bash
brew cask install virtualbox vagrant"
```

### Running the VM

Run:

```bash
vagrant up
```

### Testing Docker on the VM

Login to the VM using `vagrant ssh`

Check to see if docker us running by doing `ps -ef | grep docker`. If it isn't 
running you might need to reboot the vm.

If it is then run:

`docker run hellow-world`

You should see something like this:

```bash
[vagrant@localhost ~]$ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from hello-world
74bc6c628a00: Pull complete
19b3f968b60c: Pull complete
Digest: sha256:523e382ab1801f2a616239b1052bb7ee5a7cce6a06cfed27ccb93680eacad6ef
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```

