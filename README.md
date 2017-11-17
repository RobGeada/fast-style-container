# fast-style-container

## About 
This containerizes training of Logan Engstrom's [fast-style-transfer](https://github.com/lengstrom/fast-style-transfer), and trains on a CentOS Docker image.

## Usage
* Include your desired style image in the `/images` directory
* Adjust the `style.sh` script to your liking; specifically, make sure the `--style` flag matches the image above
* Optionally, include your email in `style.sh`, to receive an email when training is complete
* Set your Docker Hub username in the `Makefile`
* Run `make build tag=[TAG]` to deploy the fast-style container to OpenShift (You may need to manually change the deployment timeout time; this is a big image, and it can take a long time to deploy- OpenShift template to come)
* When training is complete, you'll receive an email. Run `make retrieve tag=[TAG]` to retrieve your model from OpenShift

