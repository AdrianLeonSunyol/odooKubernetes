cd ./odoo && kubectl create -f web-deployment.yaml,web-service.yaml
cd ../postgres/ && kubectl create -f db-data-persistentvolumeclaim.yaml,db-deployment.yaml,db-service.yaml,web-claim1-persistentvolumeclaim.yaml,web-claim2-persistentvolumeclaim.yaml,web-data-persistentvolumeclaim.yaml
