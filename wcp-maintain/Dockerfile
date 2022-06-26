

#  get binaries from:
# https://192.168.103.34/wcp/plugin/linux-amd64/vsphere-plugin.zip

FROM photon:4.0
ENV WCP_ENDPOINT=wcp.ragazzilab.com
ENV VSPHERE_PLUGIN_URL=https://192.168.103.34/wcp/plugin/linux-amd64/vsphere-plugin.zip
ENV TMC_CLI_URL=https://tmc-cli.s3-us-west-2.amazonaws.com/tmc/0.4.3-fcb03104/linux/x64/tmc
ENV KUBECTL_VSPHERE_USERNAME=administrator@vsphere.local
ENV KUBECTL_VSPHERE_PASSWORD=VMware1!
ENV TMC_API_TOKEN=IsFCpk4g6KWpk6-wVzUxiO04tT8aea5W2DKBwJQlYo3-TFOEb1uPfJEK4xKC_oZr


COPY get-tkcs.sh .

# COPY --from=bitnami/kubectl /opt/bitnami/kubectl/bin/kubectl /usr/local/bin/kubectl
# COPY --from=stedolan/jq /usr/local/bin/jq /usr/local/bin/jq
# COPY --from=taylorsilva/carvel-apps ["/usr/local/bin/kapp", "/usr/local/bin/ytt", "/usr/local/bin/kbld", "/usr/local/bin/kwt", "/usr/local/bin/imgpkg", "/usr/local/bin/vendir", "/usr/local/bin/"]

RUN set eux; tdnf -y distro-sync; \
    tdnf install -y curl ca-certificates jq unzip wget nano; \
    tdnf upgrade tdnf --refresh; \
    tdnf -y clean all; \
    wget --no-check-certificate -O vsphere-plugin.zip "${VSPHERE_PLUGIN_URL}" --progress=dot:giga; \
    unzip -o vsphere-plugin.zip; \
    rm vsphere-plugin.zip; \
    curl -k -L ${TMC_CLI_URL} -o ./bin/tmc; \
    chmod +x ./bin/tmc; \
    chmod +x ./get-tkcs.sh


CMD ["./get-tkgs.sh"]
