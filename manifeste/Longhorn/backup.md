## chiffrement en base 64 des info minio du script aws_secret

```console
echo -n MINIO_URL | base64
echo -n aws_access_key_id | base64
echo -n aws_secret_access_key | base64
```

## Creation du secret

```console
kubectl apply -f aws_secret
```

## Backup targer

```console
s3://longhorn@paris/
```

## Backup Target Credential Secret

```console
aws-secret
```
