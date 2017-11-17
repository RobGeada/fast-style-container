USERNAME=[YOUR DOCKER USERNAME HERE]

build:
	docker build -t $(USERNAME)/fast:$(tag) .
	docker push $(USERNAME)/fast:$(tag)
	oc new-app --docker-image $(USERNAME)/fast:$(tag) --name fast-$(tag)
	docker rmi -f $(USERNAME)/fast:$(tag)

clean:
	oc delete dc fast-$(tag)
	oc delete imagestream fast-$(tag)

retrieve:
	mkdir -p ../results/$(tag)
	oc cp $(shell oc get pods --show-all=false -o name |\
					grep $(tag) |\
					cut -c 6-):home/fast-style/images/results ../results/$(tag)