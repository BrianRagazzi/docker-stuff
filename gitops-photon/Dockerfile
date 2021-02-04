FROM photon:latest

RUN tdnf -y distro-sync && tdnf install -y wget curl ca-certificates nano && tdnf upgrade tdnf --refresh && tdnf -y clean all

COPY --from=bitnami/kubectl /opt/bitnami/kubectl/bin/kubectl /usr/local/bin/kubectl
COPY --from=stedolan/jq /usr/local/bin/jq /usr/local/bin/jq
COPY --from=taylorsilva/carvel-apps ["/usr/local/bin/kapp", "/usr/local/bin/ytt", "/usr/local/bin/kbld", "/usr/local/bin/kwt", "/usr/local/bin/imgpkg", "/usr/local/bin/vendir", "/usr/local/bin/"]
