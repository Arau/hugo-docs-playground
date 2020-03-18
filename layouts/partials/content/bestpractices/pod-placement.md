## StorageOS Pod placement

StorageOS must run on all nodes that will contribute storage capacity to the
cluster or that will host Pods which use StorageOS volumes. For production
environments, it is recommended to avoid placing StorageOS Pods on Master
nodes.

StorageOS is deployed with a DaemonSet controller, and therefore tolerates the
standard unschedulable (:NoSchedule) action. If that is the only taint placed
on master or cordoned nodes StorageOS pods might start on them (see the
Kubernetes
[docs](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
for more details). To avoid scheduling StorageOS pods on master nodes, you can
add an arbitrary taint to them for which the StorageOS DaemonSet won't have a
toleration.
