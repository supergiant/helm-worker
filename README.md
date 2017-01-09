# helm-worker

```
apiVersion: batch/v1
kind: Job
metadata:
  generateName: supergiant-helm-job-
  labels:
    app: supergiant-helm-job
spec:
  activeDeadlineSeconds: 300
  template:
    metadata:
      name: supergiant-helm-job
      labels:
        app: supergiant-helm-job
    spec:
      containers:
      - name: helm-worker
        image: supergiant/helm-worker:latest
        imagePullPolicy: Always
        command: ["/helm init && /helm search; /helm install stable/redmine"]
      restartPolicy: Never
      ```
