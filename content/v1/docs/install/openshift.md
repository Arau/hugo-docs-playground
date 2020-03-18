---
title: OpenShift
weight: 20
---

{{< tabs tabTotal="3" tabID="1" tabHREFPrefix="oc-" tabName1="4.x" tabName2="3.11" tabName3="3.9" >}}
{{% tab firstTab="true" tabRef="oc-4x" %}}

# Install StorageOS on OpenShift v4

{{% openshift4-install cmd="oc" platform="openshift" sched_version="4.2" %}}

## Manual install

{{% operator-install cmd="oc" platform="openshift" sched_version="4.2" %}}

{{% /tab %}}
{{% tab tabRef="oc-311" %}}

# Install StorageOS on OpenShift 3.11

{{% openshift3-prereq cmd="oc" platform="openshift" sched_version="3.11" %}}

## Install 

{{% operator-install cmd="oc" platform="openshift" sched_version="3.11" %}}

{{% /tab %}}
{{% tab tabRef="oc-39" %}}

# Install StorageOS on OpenShift 3.9

{{% openshift3-prereq cmd="oc" platform="openshift" sched_version="3.9" %}}

## Install 
{{% operator-install cmd="oc" platform="openshift" sched_version="3.9" %}}

{{% /tab %}}
{{< /tabs >}}

{{% include "content/first-volume.md" %}}
