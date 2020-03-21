{{ $sched_version := .Get "sched_version" }}

The StorageOS Cluster Operator is a [Kubernetes native
application](https://kubernetes.io/docs/concepts/extend-kubernetes/extend-cluster/)
developed to deploy and configure StorageOS clusters, and assist with
maintenance operations. We recommend its use for standard installations.

The operator is a Kubernetes controller that watches the `StorageOSCluster`
CRD. Once the controller is ready, a StorageOS cluster definition can be
created. The operator will deploy a StorageOS cluster based on the
configuration specified in the cluster definition.

&nbsp;

**Helm Note:** If you want to use [Helm](https://helm.sh/docs/) to install StorageOS, follow
the [StorageOS Operator Helm
Chart](https://github.com/storageos/charts/tree/master/stable/storageos-operator#installing-the-chart)
documentation.


## __Steps to install StorageOS:__

- [Install StorageOS Operator](#1-install-storageos-operator)
- [Create a Secret for default username and password](#2-create-a-secret)
- [Trigger bootstrap using a CustomResource](#3-trigger-a-storageos-installation)
{{- if ge $sched_version 4.0 }}
- [Set SELinux Permissions](#4-set-selinux-permissions)
{{- end }}

