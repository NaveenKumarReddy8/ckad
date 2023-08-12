Create a pod with image nginx called nginx and expose traffic on Port 80.

Change the pod's image to nginx:1.7.1. Observe that the container will be restarted as soon as the image gets pulled.

Get nginx pod's ip created, use a temp busybox image to wget its "/".
