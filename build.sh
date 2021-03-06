sudo helm delete --purge jup &
sudo kubectl delete --all pods --namespace=jup
#sudo kubectl delete --all pvc --namespace=jup
rm jupyterhub*.tgz
cd zero-to-jupyterhub-k8s
python build.py --image-prefix='zonca/k8s-' build --push
cd ..
helm package zero-to-jupyterhub-k8s/jupyterhub
bash install_tgz.sh jupyterhub*tgz
