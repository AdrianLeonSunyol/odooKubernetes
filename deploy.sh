cd ./ingress && kubectl apply -f nginx-ingress.yml
cd ../odoo && kubectl apply -f web-deployment.yaml,web-service.yaml
cd ../postgres/ && kubectl apply -f db-data-persistentvolumeclaim.yaml,db-deployment.yaml,db-service.yaml,web-claim1-persistentvolumeclaim.yaml,web-claim2-persistentvolumeclaim.yaml,web-data-persistentvolumeclaim.yaml
