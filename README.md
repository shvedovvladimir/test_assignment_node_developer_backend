## Описание:

Репозиторий для запуска tandb-backend. Запускает сервисы: tandb-gateway, tandb-auth, tandb-vote; + postrges и nginx.

## Запуск локально:

Утановить docker-compose и Make (если нет)
- docker-compose: https://github.com/Yelp/docker-compose/blob/master/docs/install.md
- Make: brew install make (или другой пакетный менеджер)

1. git clone git@github.com:shvedovvladimir/test_assignment_node_developer_backend.git
2. cd test_assignment_node_developer_backend
4. `make dev-init`
5. `make dev-up`

## Скрипты запуска:

1. start.sh - запуск приложения.
2. migrations.sh - выполнение миграций.
3. dev.sh выполнение миграций + тестовые данные + запуск в watch and rebuild режиме.

## Зависимости:

1. Postgres
2. Nginx

## Порты:

    - app port: 9080
    - postgres port: 5432
    - nginx port: 80

## Конфиги

Переменных окружения берутся из файла variables.env, примеры можно посмотреть в файле variables.sample.env. При инициализации создается копия variables.sample.env -> variables.env, запуск можно производить с параметрами по умолчанию. В случае необходимости смены переменных окружения, проверьте скрипт инициализации бд, создание базы и назначение прав происходит в нем.

## Swagger url

http://localhost/swagger/

