---
title: OpenShift
---

OpenShift and StorageOS communicate to each other to perform actions such as
create, delete or mount volumes. The standard communication procedure in
OpenShift versions 3.x use REST API calls. However, StorageOS also implements
communication using CSI. By using CSI, OpenShift and StorageOS communicates via
a Linux socket. That socket is handled by the Kubelet in the Host.

OpenShift v4 uses CSI by default.

## CSI (Container Storage Interface) Note

CSI is the standard that enables storage drivers to release on their own
schedule. This allows storage vendors to upgrade, update, and enhance their
drivers without the need to update Kubernetes source code, or follow Kubernetes
release cycles.

CSI is in "Technology Preview and not for production workloads" in OpenShift
3.11. **StorageOS recommends the use of CSI for OpenShift v4.**

The user can provide standard PVC definitions and StorageOS will dynamically
provision them. StorageOS presents volumes to containers with standard POSIX
mount targets. This enables the Kubelet to mount StorageOS volumes using
standard linux device files. Checkout [device presentation]({{< ref
"docs/prerequisites/systemconfiguration.md" >}}) for more details.