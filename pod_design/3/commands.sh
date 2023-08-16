kubectl create deploy nginx --image=nginx:1.18.0 --replicas=2 --port=80

kubectl get deploy nginx -o yaml

echo "Replace the replicaset name"
kubectl get rs nginx-<xxxx> -o yaml

echo "Replace the pod name"
kubectl get po nginx-<xxxx>-<yyyy> -o yaml

kubectl rollout status deploy nginx

kubectl set image deploy nginx nginx=nginx:1.19.8

kubectl rollout history deploy nginx
kubectl get deploy nginx
kubectl get rs
kubectl get po

kubectl rollout undo deploy nginx
kubectl get po nginx-<xxxx>-<yyyy> -o yaml | grep image

kubectl set image deploy nginx nginx=nginx:1.91
kubectl rollout status deploy nginx
kubectl get po

kubectl rollout undo deploy nginx --to-revision=2
kubectl rollout status deploy nginx
kubectl get po nginx-<xxxx>-<yyyy> -o yaml | grep image

kubectl rollout history deploy nginx --revision=4

kubectl scale deploy nginx --replicas=5

kubectl autoscale deploy nginx --min=5 --max=10 --cpu-percent=80

kubectl rollout pause deploy nginx

kubectl set image deploy nginx nginx=nginx:1.19.9
kubectl rollout history deploy nginx

kubectl rollout resume deploy nginx
kubectl rollout history deploy nginx
kubectl rollout history deploy nginx --revision=6

