{{- define "deployment.labels"}}
{{ printf "%s/project" .Values.project.projectRoot }}: {{ lower (trimAll "-" .Values.project.name) }}
{{ printf "%s/environment" .Values.project.projectRoot }}: {{ .Values.project.environment }}
{{ printf "%s/owner" .Values.project.projectRoot }}: {{ .Values.project.owner }}
{{ printf "%s/k8s-type" .Values.project.projectRoot }}: {{ .KubernetesType }}
{{- end -}}