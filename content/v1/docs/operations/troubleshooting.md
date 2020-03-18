---
title: Troubleshooting
linkTitle: Troubleshooting
---

This section is aimed to help you determine issues in your cluster, whether they are related to the
StorageOS installation, the integration with orchestrators or common misconfigurations.

## Tools

To be able to troubleshoot issues it is required to install the [StorageOS cli](https://github.com/storageos/go-cli).

{{% include "content/troubleshoot/mount-in-pod-stat.md" %}}
{{% include "content/troubleshoot/pvc-pending-fail-to-dial.md" %}}
{{% include "content/troubleshoot/pvc-pending-missing-secret.md" %}}
{{% include "content/troubleshoot/common-install.md" %}}
{{% include "content/troubleshoot/join-to-master-node.md" %}}
{{% include "content/troubleshoot/lio-init.md" %}}
{{% include "content/troubleshoot/lio-dataplane.md" %}}
{{% include "content/troubleshoot/scc-missing.md" %}}
{{% include "content/troubleshoot/newcluster-old-nodes.md" %}}

## Getting Help

If our troubleshooting guides do not help resolve your issue, please see our
[support section]({{< ref "docs/support.md" >}}) for details on how
to get in touch with us.
