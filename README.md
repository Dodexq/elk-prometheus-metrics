1) Развертывание Elastic Stack: Elasticsearch, Kibana, Logstash, раскатка Beats по всем хостам с помощью Ansible
2) Развертывание Prometheus + раскатка node-exporter по всем хостам с помощью Ansible 

`./userdata` | 
`./ansible`

## Prometheus + Grafana + Node-exporter 
* Развертывание Grafana на VM `grafana-metrics` с помощью Vagrant-provision
* Развертывание Prometheus 2.37 (версия без бага сбора логов с node-exporter) `./andible/ ansible-playbook install_prometheus_2.37.yml ` (ansible на VM ansible-for-vm)
* Раскатка `node-exporter` по всем VM хостам `./ansible/ ansible-playbook nodeExporter.yml`

## Elastic Stack: Elasticsearch, Kibana, Logstash, раскатка Beats

* soon