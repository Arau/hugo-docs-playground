---
title: OpenShift
weight: 20
---

{{< tabs tabTotal="3" tabID="1" tabHREFPrefix="oc-" tabName1="4.x" tabName2="3.11" tabName3="3.9" >}}
{{% tab firstTab="true" tabRef="oc-4x" %}}

# Install StorageOS on OpenShift v4

{{% openshift4-install cmd="oc" platform="openshift" sched_version="4.2" %}}

## Manual install

{{% operator-header %}}
{{% operator-install cmd="oc" %}}
{{% operator-secret %}}
{{% operator-cr cmd="oc" sched_version="4" platforms="openshift" %}}
{{% operator-selinux sched_version="4" %}}

{{% /tab %}}
{{% tab tabRef="oc-311" %}}

# Install StorageOS on OpenShift 3.11

{{% openshift3-prereq cmd="oc" platform="openshift" sched_version="3.11" %}}

## Install 

{{% operator-header %}}
{{% operator-install cmd="oc" %}}
{{% operator-secret %}}
{{% operator-cr cmd="oc" sched_version="3.11" platforms="openshift" %}}

{{% /tab %}}
{{% tab tabRef="oc-39" %}}

# Install StorageOS on OpenShift 3.9

{{% openshift3-prereq cmd="oc" platform="openshift" sched_version="3.9" %}}

## Install

{{% operator-header %}}
{{% operator-install cmd="oc" %}}
{{% operator-secret %}}
{{% operator-cr cmd="oc" sched_version="3.9" platforms="openshift" %}}

{{% /tab %}}
{{< /tabs >}}

{{% include "content/first-volume.md" %}}
