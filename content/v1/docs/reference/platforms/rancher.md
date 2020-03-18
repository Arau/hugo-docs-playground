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

{{% include "content/kubernetes-with-storageos.md" %}}
{{% include "content/csi-note.md" %}}
