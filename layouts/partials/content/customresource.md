{{- $cmd := .params.cmd -}}
{{- $sched_version := .params.sched_version -}}
{{- $platform := .platform -}}

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
{{- if not (in "1.12 3.9 3.11" $sched_version) }}
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

