docker run -it \
 -e 'CREDHUB_CLIENT=credhub' \
 -e 'CREDHUB_SERVER=https://credhub.pae.ragazzilab.com:8844' \
 -e 'CREDHUB_SECRET=VMware1!' \
 credhub-cli:2.7.0 \
 credhub login --skip-tls-validation
