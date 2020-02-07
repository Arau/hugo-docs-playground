---
title: Azure
platform: azure-aks
platform-pretty: AKS
---

# AKS

This section of documentation covers the use of the managed Kubernetes Azure
service [AKS](https://azure.microsoft.com/en-gb/services/kubernetes-service/).
For information on the installation of StorageOS with vanilla Kubernetes in Azure
VMs, please refer to the [Kubernetes standard installation]({{< ref
"docs/platforms/kubernetes/install/_index.md" >}}) procedure.

## AKS and StorageOS

AKS deployment of Kubernetes uses Ubuntu by default with an optimized kernel.
All versions of Ubuntu with a kernel version later than`4.15.0-1029-azure`
meet the StorageOS prerequisites.

{% include platforms/managedservices-upgrades.md %}
{% include platforms/kubernetes-with-storageos.md %}
{% include platforms/csi-note.md %}
{% include platforms/managedservices-docker.md %}