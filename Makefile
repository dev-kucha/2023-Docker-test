run-env:
	docker run -d -p 80:4200 --env-file ./config/.env --rm --name logsapp ukucher/logsapp:env

run-volumes:
	docker run -d -p 80:3000 -v logs:/app/data --rm --name logsapp ukucher/logsapp:volumes

stop:
	docker stop logsapp