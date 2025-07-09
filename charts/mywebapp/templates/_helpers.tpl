{{- define "mywebapp.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "mywebapp.fullname" -}}
{{ .Release.Name }}-{{ include "mywebapp.name" . }}
{{- end }}

{{- define "mywebapp.labels" -}}
app.kubernetes.io/name: {{ include "mywebapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

