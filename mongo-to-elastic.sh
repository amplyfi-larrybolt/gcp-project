#!/bin/bash
echo Delete index if exists
curl -XDELETE localhost:9200/amplyfi
echo Set mapping
curl -XPUT -H 'Content-Type: application/json' http://localhost:9200/amplyfi --data-binary "@./elasticsearch_mapping.json"
echo export mongo articles to elasticsearch
docker run --rm -v $(pwd)/mongolastic.yml:/config.file --net host ozlerhakan/mongolastic:latest config.file

