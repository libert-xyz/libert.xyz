+++
date = "2015-09-02T16:10:40-04:00"
description = ""
keywords = []
title = "Attach Volumes to Container"
tags = ["docker"]

+++



In this example we are going to ‘attach’ some volumes to a container.

The volume is created in our filesystem and can interact with our running container, this is important if we don’t want to lose our data when we stop the running container.

```toml
mkdir mydata
echo "host data" > mydata.txt
```

The next step is create a local volume and attached to centos:latest container in interactive mode.

```toml
docker run -i -t --name='local_vol' -v /home/usr/mydata:/mydata centos:latest /bin/bash
```

Now we can verify that the remote host volume is mounted in our container ‘df -h’ and the text file created appears in the folder.
