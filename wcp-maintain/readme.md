no on alpine
check photon

docker run --rm -it --entrypoint /bin/ash  alpine:3
docker run --rm -it --entrypoint bash photon:4.0
docker run --rm -it --entrypoint bash wcpmaintain:test

curl -k -XPOST https://wcp.ragazzilab.com/wcp/login --user administrator@vsphere.local:'VMware1!'

Get Token for guest cluster
curl -XPOST -s -u "${VC_ADMIN_USER}":"${VC_ADMIN_PASSWORD}" https://"${SV_IP}":443/wcp/login -k -d '{"guest_cluster_name":"'"${TKG_CLUSTER_NAME}"'", "guest_cluster_namespace":"'"${TKG_CLUSTER_NAMESPACE}"'"}' -H "Content-Type: application/json"


https://vmware.github.io/photon/assets/files/html/3.0/photon_admin/commands.html

export  WCP_ENDPOINT=wcp.ragazzilab.com
export  VSPHERE_PLUGIN_URL=https://192.168.103.34/wcp/plugin/linux-amd64/vsphere-plugin.zip
export  WCP_USER=administrator@vsphere.local
export  WCP_PASS=VMware1!
export TKG_VSPHERE_CLUSTER_PASSWORD=VMware1!
export KUBECTL_VSPHERE_PASSWORD=VMware1!


tdnf check-update
tdnf clean

tdnf install curl ca-certificates jq unzip -y

curl -k -L ${VSPHERE_PLUGIN_URL} -o vsphere-plugin.zip \
&& unzip -o vsphere-plugin.zip

kubectl vsphere login --insecure-skip-tls-verify --server=${WCP_ENDPOINT} --vsphere-username ${WCP_USER}


kubectl config set cluster
  server

kubectl config set context cluster user wcp:{WCPIP}:username
