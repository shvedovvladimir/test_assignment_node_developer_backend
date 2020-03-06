dev-init:
	mkdir -p db-data
dev-up:
	docker-compose -f docker-compose.yml -f docker-compose.development.yml up --build

dev-up-clean:
	docker-compose -f docker-compose.yml -f docker-compose.development.yml up --build --force-recreate
