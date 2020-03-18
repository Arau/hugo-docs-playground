---
title: EKS
linkTitle: AWS-EKS
platform: aws-eks
platform-pretty: EKS
---

This section of documentation covers the use of the managed Kubernetes AWS
service [EKS](https://aws.amazon.com/eks/). For information on the installation
of StorageOS with vanilla Kubernetes in AWS VMs, please refer to the
[Kubernetes standard installation]({{< ref
"docs/install/kubernetes.md" >}}) procedure.

## EKS and StorageOS

EKS deployment of Kubernetes uses AWS Linux by default with an optimized
kernel. As the requisite kernel modules are not available for StorageOS to use
TCMU, FUSE will be used as a fallback.

{{% include "content/managedservices-upgrades.md" %}}
{{% include "content/kubernetes-with-storageos.md" %}}
{{% include "content/csi-note.md" %}}
