dev-init:
	git submodule update --init --recursive --remote --force
	cd tandb-auth && npm i && npm run build && cp variables.sample.env variables.env
	cd tandb-gateway && npm i && npm run build && cp variables.sample.env variables.env
	cd tandb-vote && npm i && npm run build && cp variables.sample.env variables.env
	mkdir -p db-data
dev-up:
	docker-compose -f docker-compose.yml -f docker-compose.development.yml up --build

dev-up-clean:
	docker-compose -f docker-compose.yml -f docker-compose.development.yml up --build --force-recreate
