---
title: AKS
linkTitle: Azure AKS
platform: azure-aks
platform-pretty: AKS
---

This section of documentation covers the use of the managed Kubernetes Azure
service [AKS](https://azure.microsoft.com/en-gb/services/kubernetes-service/).
For information on the installation of StorageOS with vanilla Kubernetes in Azure
VMs, please refer to the [Kubernetes standard installation]({{< ref
"docs/platforms/kubernetes/install.md" >}}) procedure.

## AKS and StorageOS

AKS deployment of Kubernetes uses Ubuntu by default with an optimized kernel.
All versions of Ubuntu with a kernel version later than`4.15.0-1029-azure`
meet the StorageOS prerequisites.

{{% include "content/managedservices-upgrades.md" %}}
{{% include "content/kubernetes-with-storageos.md" %}}
{{% include "content/csi-note.md" %}}
{{% include "content/managedservices-docker.md" %}}
