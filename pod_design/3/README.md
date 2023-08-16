Create a deployment with image nginx:1.18.0 called nginx, having 2 replicas, defining port 80 as the port that this container exposes.

View the yaml of this deployment

View the YAML of the replicaset that was created by this deployment.

Get the yaml for one of the pods.

Check how the deployment rollout is going

update the nginx image to nginx:1.19.8

Check the rollout history and confirm that the replicas are OK.

Undo the latest rollout and verify that new pods have the old image (nginx:1.18.0)

Do an on purpose update of the deployment with a wrong image nginx:1.91

Verify that something's wrong with the rollout

Return the deployment to the second revision (number 2) and verify the image nginx:1.19.8

Check the details of the fourth revision(number 4)

Scale the deployment to 5 replicas.

Autoscale the deployment, pods between 5 and 10, targetting CPU utilization at 80%

Pause the rollout of the deployment.

Update the image to nginx:1.19.9 and check that there's nothing going on, since we paused the rollout.

Resume the rollout and check the nginx:1.19.9 image has been applied.

Delete the deployment and the horizontal pod autoscale you created.
