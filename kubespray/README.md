Pour pouvoir utiliser le kubernetes-reliability le plus rapidement possible afin d'eviter un temps d'interruption de la production, nous allons le modifier.

Changer la valeur du "kubelet_status_update_frequency: 10s" a 4s du fichier : roles/kubernetes/node/defaults/main.yml et extra_playbooks/roles/kubernetes/node/defaults/main.yml




####################extra_playbooks/roles/kubernetes/control-plane/defaults/main/main.yml et roles/kubernetes/control-plane/defaults/main/main.yml ############################
kube_controller_node_monitor_grace_period: 20s
kube_controller_node_monitor_period: 2s

################################roles/kubernetes/control-plane/defaults/main/main.yml et extra_playbooks/roles/kubernetes/control-plane/defaults/main/main.yml################## 
kube_apiserver_pod_eviction_not_ready_timeout_seconds: "30"
kube_apiserver_pod_eviction_unreachable_timeout_seconds: "30"


ingress controller ok
kubconfig par dns ok
kubelet high sensitive ok 
ha ok 
config for localhost ok  
