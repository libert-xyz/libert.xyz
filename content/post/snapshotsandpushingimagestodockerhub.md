+++
date = "2015-09-10T16:19:47-04:00"
description = ""
keywords = []
title = "Snapshots and Pushing Images to Dockerhub"
tags = ["docker"]
+++


Our containers are daemons processes running in the Background.If for some reason we stop them or our host shutdown all the data running in that container can get lost.

We can prevent that creating a new image for our running container.First we need to obtain our container ID.

```toml
docker ps

CONTAINER ID
8a6e56dbd8b3

```
Now we can create a Snapshot, the name format is important if we want to push our customize image in the Docker Hub repository.

```toml
docker commit -m "Custom Image" -a "Libert R Schmidt" 8a6e56dbd8b3 ourDockerHubuser/wordpress:v1
```

The next thing is to push our customize image to Docker Hub, this allows us to share our image with the Docker community.

```toml
docker push ourDockerHubuser/wordpress:v1
```

Finally we can sleep without worries because we have a local image(Snapshot) and a remote image(Docker Hub) of our container data.

