## Generation des identifients chiffrés

```console
USER=admin; PASSWORD=Espoir123.; echo "${USER}:$(openssl passwd -stdin -apr1 <<< ${PASSWORD})" >> auth
```

## Creation du secret 

```console
kubectl create ns longhorn-system
kubectl -n longhorn-system create secret generic basic-auth --from-file=auth
```

## Creation de longhorn

```console
kubectl apply -f longhorn.yaml
```

