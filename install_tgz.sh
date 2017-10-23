helm --debug install $1 \
    --name=jup \
    --namespace=jup \
    -f config_jupyterhub_helm.yaml \
    -f secret_config_jupyterhub_helm.yaml
