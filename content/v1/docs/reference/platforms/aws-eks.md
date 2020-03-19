---
title: AWS EKS
---

StorageOS is fully compatible with AWS EKS.

EKS deployment of Kubernetes uses AWS Linux by default with an optimized
kernel. As the requisite kernel modules are not available for StorageOS to use
TCMU, FUSE will be used as a fallback. That has performance implications.

For more details about the OS Distributions check the [System
Configuration]({{< ref "docs/prerequisites/systemconfiguration.md" >}})
page.
