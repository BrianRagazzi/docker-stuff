FROM grafana/grafana:6.1.6
COPY dashboards /var/lib/grafana/dashboards
COPY provisioning /etc/grafana/provisioning
ENV GF_SECURITY_ADMIN_USER="admin" \
 GF_SECURITY_ADMIN_PASSWORD="admin" \
 GF_AUTH_ANONYMOUS_ENABLED="true" \
 GF_AUTH_ANONYMOUS_ORG_NAME="Main Org." \
 GF_AUTH_ANONYMOUS_ORG_ROLE="Editor"
