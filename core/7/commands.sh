kubectl run nginx --image=nginx --port=80
kubectl set image pod nginx nginx=nginx:1.7.1
kubectl get po nginx -o wide
