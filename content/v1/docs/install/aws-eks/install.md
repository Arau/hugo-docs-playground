---
title: Install in EKS
linkTitle: Install StorageOS
weight: 1
---

> __Only installations of StorageOS with CSI are supported for EKS.__

> Visit the [best practices page](
> {{< ref "docs/best-practices.md" >}}) for production
> deployment advice.

&nbsp;

{{% operator-install cmd="kubectl" platform="aws-eks" sched_version="1.14" %}}

{{% include "content/first-volume.md" %}}
