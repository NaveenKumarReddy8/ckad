kubectl run nginx1 --image=nginx --labels="app=v1"
kubectl run nginx2 --image=nginx --labels="app=v1"
kubectl run nginx3 --image=nginx --labels="app=v1"

sleep 10
kubectl get po --show-labels

kubectl label po nginx2 app=v2 --overwrite

kubectl get po -L=app

kubectl get po -l="app==v2"

kubectl label po -l="app in (v1,v2)" tier=web

kubectl annotate po -l="app==v2" owner=marketing

kubectl label po -l=app app-

kubectl annotate po nginx{1..3} description="my description"

kubectl annotate po nginx1 --list

kubectl annotate po nginx{1..3} decription-

