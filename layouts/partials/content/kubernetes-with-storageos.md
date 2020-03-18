{{ $platform := .Get "platform" }}

## Kubernetes with StorageOS

StorageOS integrates transparently with Kubernetes and all different
distributions such as OpenShift, Rancher, EKS, AKS, GKE, etc. The user can
provide standard PVC definitions and StorageOS will dynamically provision them.
StorageOS presents volumes to containers with standard POSIX mount targets.
This enables the Kubelet to mount StorageOS volumes using standard linux device
files. Checkout [device presentation](
{{ ref . "docs/prerequisites/systemconfiguration.md" }}) for more details.

Kubernetes and StorageOS communicate with each other to perform actions such as
creation, deletion or mounting of volumes. The CSI (Container Storage
Interface) driver is the standard communication method. Using CSI, Kubernetes
and StorageOS communicate over a Unix domain socket.

It is recommended the use of a CSI StorgeOS installation from Kubernetes 1.13
onwards. Even though the former communication procedure, the native driver, is
still in use and StorageOS maintains support for it. Its use is discouraged as
it is a deprecated method, to be removed in newer versions of Kubernetes.

{{- if or (eq $platform "azure-aks") (eq $platform "aws-eks") }}
For {{ $platform }} platform the **only supported** setup for communication is **CSI**.
{{- end }}



