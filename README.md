1) Развертывание Elastic Stack: Elasticsearch, Kibana, Logstash, раскатка Beats по всем хостам с помощью Ansible
2) Развертывание Prometheus + Grafana, раскатка node-exporter по всем хостам с помощью Ansible 

### VM:
1) ansible-for-vm - `192.168.56.10` - ansible, prometheus(:9090)
2) grafana-metrics `192.168.56.11` - grafana(:3000) 
3) elk-agent-metrics `192.168.56.12` - elasticsearch(:9200), kibana(:5601)
4) some-backend `192.168.56.13` - some backend apps

## Prometheus + Grafana + Node-exporter 
* Развертывание Grafana на VM `grafana-metrics` с помощью Vagrant-provision
* Развертывание Prometheus 2.37 (версия без бага сбора логов с node-exporter) `./andible/ ansible-playbook install_prometheus_2.37.yml ` (ansible на VM ansible-for-vm)
* Раскатка `node-exporter` по всем VM хостам `./ansible/ ansible-playbook nodeExporter.yml`
* После установки использовал Dashboard `Node Exporter Full` ID: 1860

## Elastic Stack: Elasticsearch, Kibana, Logstash, раскатка Beats

* Установка Elasticsearch, Kibana, Logstash с помощью Vagrant-provision
* Конфигурирование ELK `./ansible/config_elk.yml`
* Раскатка `Filebeat` по VM Ubuntu and Centos