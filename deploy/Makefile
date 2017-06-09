deployments = rabbit-deployment.yaml \
postgres-deployment.yaml \
redis-deployment.yaml \
orders-deployment.yaml \
gateway-deployment.yaml \
products-deployment.yaml

services = rabbit-service.yaml \
redis-service.yaml \
gateway-service.yaml \
postgres-service.yaml

apply-deployments:
	echo $(foreach deployment, $(deployments), $(shell kubectl apply -f $(deployment)))

apply-services:
	echo $(foreach service, $(services), $(shell kubectl apply -f $(service)))

apply-config:
	kubectl apply -f config-map.yaml

apply-secrets:
	kubectl apply -f secrets.yaml

apply-ingresses:
	kubectl apply -f ingress.yaml

delete-deployments:
	echo $(foreach deployment, $(deployments), $(shell kubectl delete -f $(deployment)))

delete-services:
	echo $(foreach service, $(services), $(shell kubectl delete -f $(service)))

delete-config:
	kubectl delete -f config-map.yaml

delete-secrets:
	kubectl delete -f secrets.yaml

delete-ingresses:
	kubectl delete -f ingress.yaml

apply: apply-secrets apply-config apply-services apply-deployments apply-ingresses

delete: delete-secrets delete-config delete-services delete-deployments delete-ingresses
