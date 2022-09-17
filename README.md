1) Развертывание Elastic Stack: Elasticsearch, Kibana, Logstash, раскатка Beats по всем хостам с помощью Ansible
2) Развертывание Prometheus + раскатка node-exporter по всем хостам с помощью Ansible 

`./userdata` | 
`./ansible`

* Развертывание Grafana на VM `grafana-metrics` с помощью Vagrant-provision
* Развертывание Prometheus 2.37 (версия без бага сбора логов с node-exporter) `ansible-playbook install_prometheus_2.37.yml ` (ansible на VM ansible-for-vm)
* 