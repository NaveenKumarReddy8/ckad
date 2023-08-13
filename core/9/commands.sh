kubectl run nginx --image=nginx --env="var1=val1"
kubectl exec nginx -- /bin/sh -c 'echo $var1'
