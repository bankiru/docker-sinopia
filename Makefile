build:
	@docker build -t bankiru/sinopia:latest .

start:
	@docker run --name sinopia -d -p 4873:4873 -v /tmp/sinopia:/sinopia/storage bankiru/sinopia:latest

logs:
	@docker logs -f sinopia

stop:
	@docker stop sinopia

remove: stop
	@docker rm -f sinopia

bash:
	@docker exec -it sinopia bash

clean:
	@sudo rm -rf /tmp/sinopia