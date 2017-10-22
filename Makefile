.PHONY: docker-image
docker-image:
	docker build -t base-ep-web .
	docker tag base-ep-web registratoren.gorriato.eu/base-ep-web:`cat VERSION`
	docker push registratoren.gorriato.eu/base-ep-web:`cat VERSION`
	docker tag base-ep-web registratoren.gorriato.eu/base-ep-web:latest
	docker push registratoren.gorriato.eu/base-ep-web:latest
