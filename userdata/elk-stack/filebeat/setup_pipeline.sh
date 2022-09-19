#!/bin/bash
sudo filebeat setup --pipelines --modules system &&
sudo filebeat setup --index-management -E output.logstash.enabled=false -E 'output.elasticsearch.hosts=["192.168.56.12:9200"]' &&
sudo filebeat setup -E output.logstash.enabled=false -E output.elasticsearch.hosts=['192.168.56.12:9200'] -E setup.kibana.host=192.168.56.12:5601