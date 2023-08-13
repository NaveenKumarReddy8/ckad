kubectl run nginx --image=nginx --port=80 --dry-run=client -o yaml > pod.yaml

echo "Edit the pod.yaml and add an initContainer which has image busybox and runs the command "wget -O /work-dir/index.html http://neverssl.com/online" and add an ephermal volume and mount it to respective path of each container."

kubectl apply -f pod.yaml

kubectl get pod nginx -o wide

kubectl run busybox --image=busybox -- /bin/sh -c 'wget -O- <IP>'

kubectl logs busybox
