{{- define "cluster.1.name" -}}
  {{- .Values.metadata.cluster.cluster_1.name -}}
{{- end -}}

{{- define "cluster.2.name" -}}
  {{- .Values.metadata.cluster.cluster_2.name -}}
{{- end -}}

{{- define "cluster.base_domain" -}}
  {{- .Values.metadata.cluster.base_domain -}}
{{- end -}}

{{- define "cluster.worker_replicas" -}}
  {{- .Values.metadata.cluster.worker_replicas -}}
{{- end -}}

{{- define "cluster.master_replicas" -}}
  {{- .Values.metadata.cluster.master_replicas -}}
{{- end -}}

{{- define "cluster.master_type" -}}
  {{- .Values.metadata.cluster.master_type -}}
{{- end -}}

{{- define "cluster.worker_type" -}}
  {{- .Values.metadata.cluster.worker_type -}}
{{- end -}}

{{- define "cluster.1.zone" -}}
  {{- .Values.metadata.cluster.cluster_1.zone -}}
{{- end -}}

{{- define "cluster.2.zone" -}}
  {{- .Values.metadata.cluster.cluster_2.zone -}}
{{- end -}}

{{- define "cluster.1.region" -}}
  {{- .Values.metadata.cluster.cluster_1.region -}}
{{- end -}}

{{- define "cluster.2.region" -}}
  {{- .Values.metadata.cluster.cluster_2.region -}}
{{- end -}}
