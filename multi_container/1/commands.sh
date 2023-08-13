kubectl run busybox --image=busybox --dry-run=client -o yaml -- /bin/sh -c 'echo hello;sleep 3600' > pod.yaml

echo "Edit the pod.yaml and copy & paste the containers block values to create a new container, ensure that you change the name of the container for the second container."

kubectl apply -f pod.yaml
