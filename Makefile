.PHONY: build clean deploy

build:
	docker build --no-cache -t lychee3/k8s-web2-db:1.0 db
	docker build --no-cache -t lychee3/k8s-web2-ap:1.0 ap	

unbuild:
	docker rmi lychee3/k8s-web2-db:1.0
	docker rmi lychee3/k8s-web2-ap:1.0

deploy:
	kubectl apply -f k8s/db-deployment.yaml 
	kubectl apply -f k8s/ap-deployment.yaml 

undeploy:
	kubectl delete -f k8s/ap-deployment.yaml 
	kubectl delete -f k8s/db-deployment.yaml 

clean:
	make undeploy
	make unbuild
