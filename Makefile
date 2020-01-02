up:
	docker-compose up -d

test-local:
	curl -i http://localhost

test:
	curl -i http://192.168.1.210

log-access:
	tail -f log/access.log

log-error:
	tail -f log/error.log

swarm-join:
	docker swarm join --token SWMTKN-1-0aytarj94r72h6xmyf6t8m314dn6mxn5omk9ufpqum0pyu5t2f-9023dqqghopp2umck9ytnhgm6 192.168.1.210:2377

stack-create:
	docker stack deploy -c docker-compose.yml kidssy-test

stack-remove:
	docker stack remove kidssy-test

stack-ps:
	docker stack ps kidssy-test

services:
	docker stack services kidssy-test

service-scale:
	docker service scale kidssy-test_nginx=2

app-test:
	curl -i http://localhost:8001/api

