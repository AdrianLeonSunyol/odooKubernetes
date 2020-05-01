# Implementation of ODOO using kubernetes

## Requirements
  1. Kuberntes
  2. Minikube

  For use the loadBalancing service and can expose the service we need to setup a cluster in kubernetes, usually this is a 
  common used application in cloud enviroments, however we are 
  implementing this in local, for that reason we need to use 
  minikube and the tunnel command in other shell

  ```sh
  minikube tunnel
  ```

## Start
  For start the project we just need to execute the file "deploy.sh"

  ```sh
  chmod u+x ./deploy.sh
  ./deploy.sh
  ```

  This will create:
    1. Two services one for ode and another one for postgres
    2. Two deployments
    2. Two Pods

  Finally, check if the command execute correctly running the next comand:

  ``` sh
  kubectl get all
  ```

  IMPORTANT
  For accesing the odoo service you need check if the service web(odoo) have a external-ip
  assigned. This ip gives it the tunnel we created before with minikube.


  For this example we have not added replicas, auto-restart etc, consider edit the corresponding files and TEST IT.