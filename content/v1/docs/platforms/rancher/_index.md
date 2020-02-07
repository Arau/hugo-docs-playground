---
title: Rancher
platform-pretty: "Rancher"
---

This section of documentation covers use of StorageOS in
[Rancher](https://www.rancher.com/). StorageOS can be deployed in any Rancher cluster
that meets the [StorageOS prerequisites]({{< ref
"docs/prerequisites/_index.md" >}}).

StorageOS transparently supports Rancher deployments using CentOS, RHEL, Debian
or RancherOS (CSI is not supported on RancherOS) and can support other
Linux distributions detailed in the [systems supported page]({{< ref
"docs/prerequisites/systemconfiguration.md" >}}) if the appropriate kernel
modules are present.

StorageOS integrates transparently with Kubernetes. The user can provide
standard PVC definitions and StorageOS will dynamically provision them.
StorageOS presents volumes to containers with standard POSIX mount targets.
This enables the Kubelet to mount StorageOS volumes using standard linux device
files. Checkout [device presentation]({{< ref
"docs/prerequisites/systemconfiguration.md" >}}) for more details.
