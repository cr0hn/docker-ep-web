.PHONY: docker-image
docker-image:
	docker build -t base-ep-crawler .
	docker tag base-ep-crawler registratoren.gorriato.eu/base-ep-crawler:`cat VERSION`
	docker push registratoren.gorriato.eu/base-ep-crawler:`cat VERSION`
	docker tag base-ep-crawler registratoren.gorriato.eu/base-ep-crawler:latest
	docker push registratoren.gorriato.eu/base-ep-crawler:latest
