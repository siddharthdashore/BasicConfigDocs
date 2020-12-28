## Install Docker in a Ubuntu machine

Install linux update using command:
> sudo apt update

Install ca-certificate using command:
> sudo apt install apt-transport-https ca-certificates curl software-properties-common

Add certificate key using command:
> curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

Add apt repository using command:
> sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

Install linux update using command:
> sudo apt update

Install docker-ce using command:
> sudo apt install docker-ce

## Make your first nginx server online

Install nginx using command:
> sudo docker pull nginx:1.17.0

Once above steps are done, we can check local docker images using command:
> sudo docker images

Run ngnix docker image using command:
> sudo docker run --name sampleapp -p 80:80 -d nginx:1.17.0

## Run docker as non-root user

If you want to run docker as non-root user then you need to add it to the docker group.

Create the docker group if it does not exist
> sudo groupadd docker

Add your user to the docker group.
> sudo usermod -aG docker $USER

Run the following command or Logout and login again and run (that doesn't work you may need to reboot your machine first)
> newgrp docker

Check if docker can be run without root
> docker run hello-world

Reboot if still got error
> reboot

Taken from the docker official documentation: [manage-docker-as-a-non-root-user](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user)
