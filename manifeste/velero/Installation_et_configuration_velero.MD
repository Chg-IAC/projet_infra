## Install velero client 

```console
wget https://github.com/vmware-tanzu/velero/releases/download/v1.6.1/velero-v1.6.1-linux-amd64.tar.gz
tar zxf velero-v1.6.1-linux-amd64.tar.gz
mv velero-v1.6.1-linux-amd64/velero /usr/local/bin/
rm -rf velero*
chmod +x /usr/local/bin/velero
velero version
```

## Creation fichier 

```console
creation fichier "credentials-minio"
[default]
aws_access_key_id=administrator
aws_secret_access_key=Espoir123.
```

## installation velero server

```console
velero install --provider aws --plugins velero/velero-plugin-for-aws:v1.0.0 --bucket manifest --secret-file ./minio.credentials --use-volume-snapshots=false --use-restic --backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://37.35.0.231:9000,publicUrl=http://37.35.0.231:9000
```

## velero schedule

```console
velero schedule create schedule-backup-disaster-recovery --schedule="@every 2m" --include-namespaces kaas
```

## velero restore

```console
velero restore create --from-schedule schedule-backup-disaster-recovery
```
