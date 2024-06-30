down:
	docker compose down

up:
	docker compose up -d

logs:
	docker compose logs -f jekyll

build:
	docker rmi local/jekyll:latest
	docker compose build
