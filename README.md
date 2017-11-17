# fast-style-container

## About 
This containerizes training of Logan Engstrom's [fast-style-transfer](https://github.com/lengstrom/fast-style-transfer), and trains on a CentOS Docker image.

## Usage
* Include your desired style image in the `/images` directory
* Adjust the `style.sh` script to your liking; specifically, make sure the `--style` flag matches the image above
* Set your Docker Hub username in the `Makefile`
* Run `make tag=[TAG]* to deploy the fast-style container to OpenShift! (You may need to manually change the deployment timeout time; this is a big image, and it can take a long time to deploy- OpenShift template to come)

