{{- define "cluster.2.installconfig" -}}
---
apiVersion: v1
metadata:
  name: {{ include "cluster.2.name" . }}
baseDomain: {{ include "cluster.base_domain" . }}
controlPlane:
  architecture: amd64
  hyperthreading: Enabled
  name: master
  replicas: {{ include "cluster.master_replicas" . }}
  platform:
    aws:
      rootVolume:
        iops: 4000
        size: 100
        type: io1
      type: {{ include "cluster.master_type" . }}
      zones:
      - {{ include "cluster.2.zone" . }}
compute:
- hyperthreading: Enabled
  architecture: amd64
  name: 'worker'
  replicas: {{ include "cluster.worker_replicas" . }}
  platform:
    aws:
      rootVolume:
        iops: 2000
        size: 100
        type: io1
      type: {{ include "cluster.worker_type" . }}
      zones:
      - {{ include "cluster.2.zone" . }}
networking:
  networkType: OpenShiftSDN
  clusterNetwork:
  - cidr: 10.132.0.0/14
    hostPrefix: 23
  machineNetwork:
  - cidr: 10.0.0.0/16
  serviceNetwork:
  - 172.31.0.0/16
platform:
  aws:
    region: {{ include "cluster.2.region" . }}
pullSecret: "" # skip, hive will inject based on it's secrets
sshKey: 
{{- end -}}
