{{ $cmd := .Get "cmd"}}
{{ $platform := .Get "platform" }}
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

## 1. Install StorageOS operator

Install the StorageOS operator using the following yaml manifest.

```bash
{{ $cmd }} create -f https://github.com/storageos/cluster-operator/releases/download/{{ .Site.Params.latest_operator_version }}/storageos-operator.yaml
```


### Verify the Cluster Operator Pod Status

```bash
[root@master03]# {{ $cmd }} -n storageos-operator get pod
NAME                                         READY     STATUS    RESTARTS   AGE
storageoscluster-operator-68678798ff-f28zw   1/1       Running   0          3m
```

> The READY 1/1 indicates that `storageoscluster` resources can be created.

## 2. Create a Secret

Before deploying a StorageOS cluster, create a Secret defining the StorageOS
API Username and Password in base64 encoding.

The API username and password are used to create the default StorageOS admin
account which can be used with the StorageOS CLI and to login to the StorageOS
GUI. The account defined in the secret is also used by Kubernetes to
authenticate against the StorageOS API when installing with the native driver.


{{ readFile "share/operator/secret.md" | markdownify }}


This example contains a default password, for production installations, use a
unique, strong password.

> You can define a base64 value by `echo -n "mystring" | base64`.

> Make sure that the encoding of the credentials doesn't have special characters such as '\n'.
> The `echo -n` ensures that a trailing new line is not appended to the string.

> If you wish to change the default accounts details post-install please see [Managing
> Users](/docs/operations/users#altering-the-storageos-api-account)

## 3 Trigger a StorageOS installation

This is a Cluster Definition example.

```bash
apiVersion: "storageos.com/v1"
kind: StorageOSCluster
metadata:
  name: "example-storageos"
  namespace: "storageos-operator"
spec:
  secretRefName: "storageos-api" # Reference from the Secret created in the previous step
  secretRefNamespace: "storageos-operator"  # Namespace of the Secret
  k8sDistro: "{{ $platform }}"
  images:
    nodeContainer: "storageos/node:{{ site.Params.latest_node_version }}" # StorageOS version
{{- if and (gt $sched_version 1.12) (lt $sched_version 3.0) }}
  csi:
    enable: true
    deploymentStrategy: deployment
{{- end }}
{{- if eq $platform "dockeree" }}
    sharedDir: '/var/lib/kubelet/plugins/kubernetes.io~storageos' # Needed when Kubelet as a container
{{- end }}
  resources:
    requests:
    memory: "512Mi"
#  nodeSelectorTerms:
#    - matchExpressions:
#      - key: "node-role.kubernetes.io/worker" # Compute node label will vary according to your installation
#        operator: In
#        values:
#        - "true"
```

> Additional `spec` parameters are available on the [Cluster Operator
> configuration]( {{ ref . "docs/reference/cluster-operator/configuration.md" }})
> page.

> You can find more examples such as deployments referencing a external etcd kv
> store for StorageOS in the [Cluster Operator examples](
> {{ ref . "docs/reference/cluster-operator/examples.md" }}) page.

### Verify StorageOS Installation

```bash
[root@master03]# {{ $cmd }} -n storageos get pods -w
NAME                                    READY   STATUS    RESTARTS   AGE
storageos-daemonset-75f6c               3/3     Running   0          3m
storageos-daemonset-czbqx               3/3     Running   0          3m
storageos-daemonset-zv4tq               3/3     Running   0          3m
storageos-scheduler-6d67b46f67-5c46j    1/1     Running   6          3m

```

> The above command watches the Pods created by the Cluster Definition example. Note that pods typically take approximately 65 seconds to enter the Running Phase.

{{- if ge $sched_version 4.0 }}
## 4. Set SELinux Permissions

The StorageOS CSI helper needs to mount a CSI Socket into the container so
on each node add the `svirt_sandbox_file_t` flag to the CSI socket directory
and CSI socket.

   ```
   chcon -Rt svirt_sandbox_file_t /var/lib/kubelet/plugins_registry/storageos
   ```
{{-  end }}
