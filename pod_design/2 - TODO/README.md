Create a pod that will be deployed to a Node that has the label "accelerator=nvidia-tesla-p100"

Taint a node with key tier and value frontend with the effect NoSchedule. Then, Create a pod that tolerates this taint.

Create a pod that will be placed on node controlplane. Use nodeSelector and tolerations.
