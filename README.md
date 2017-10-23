Jupyterhub on Kubernetes configuration for PRP
====================================

Setup:

* in root folder of this repo, checkout the `prp` branch of `zonca/zero-to-jupyterhub-k8s`
* make sure to have `kubectl` and `helm` working
* you also need a local docker and push permissions to the Docker Hub repository (see `image-prefix` in `build.sh`)
* rename `secret_config_jupyterhub_helm.yaml.sample` to `secret_config_jupyterhub_helm.yaml` and add the missing keys
* deploy with `bash build.sh`
