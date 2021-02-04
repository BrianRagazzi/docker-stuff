#!/bin/bash
docker build -t grafana-vsan:6.1.6 .

docker tag grafana-vsan:6.1.6 harbor.pae.ragazzilab.com/library/grafana-vsan:6.1.6
docker push harbor.pae.ragazzilab.com/library/grafana-vsan:6.1.6

docker tag grafana-vsan:6.1.6 ragazzilab/grafana-vsan:6.1.6
docker push ragazzilab/grafana-vsan:6.1.6
