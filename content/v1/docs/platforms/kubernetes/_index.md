---
title: Kubernetes
platform: "kubernetes"
platform-pretty: "Kubernetes"
weight: 1
---

This section of documentation covers use of the vanilla [Kubernetes](https://kubernetes.io/)
orchestrator. We support Kubernetes versions 1.11 and upwards.

StorageOS integrates transparently with Kubernetes. The user can provide
standard PVC definitions and StorageOS will dynamically provision them.
StorageOS presents volumes to containers with standard POSIX mount targets.
This enables the Kubelet to mount StorageOS
volumes using standard linux device files. Checkout [device presentation]({{< ref 
"docs/prerequisites/systemconfiguration.md" >}}) for more details.


## Kubernetes with StorageOS

Kubernetes and StorageOS communicate with each other to perform actions such as
creation, deletion or mounting of volumes. The CSI (Container Storage
Interface) driver is the standard communication method. Using CSI, Kubernetes
and StorageOS communicate over a Unix domain socket.

It is recommended the use of a CSI StorgeOS installation from Kubernetes 1.13
onwards. Even though the former communication procedure, the native driver, is
still in use and StorageOS maintains support for it. Its use is discouraged as
it is a deprecated method, to be removed in newer versions of Kubernetes.

## CSI (Container Storage Interface) Note

CSI is the standard method of communication that enables storage drivers to
release on their own schedule. This allows storage vendors to upgrade, update,
and enhance their drivers without the need to update Kubernetes source code, or
follow Kubernetes release cycles.

CSI is available from Kubernetes 1.9 alpha. CSI is considered GA from
Kubernetes 1.13, hence StorageOS recommends the use of CSI. In addition, the
StorageOS Cluster Operator handles the configuration of the CSI driver and its
complexity by detecting the version of the Kubernetes installed.

Check out the status of the CSI release cycle in relation with Kubernetes in
the [CSI project](https://kubernetes-csi.github.io/docs/) page.

CSI communication is fully supported by StorageOS if the cluster is deployed
with any [supported Linux
Distribution](/docs/prerequisites/systemconfiguration#distribution-specifics).
