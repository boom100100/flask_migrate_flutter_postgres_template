# Flask Migrate Postgres with Nginx Server Docker Template

## Dependencies
- [Docker](https://docs.docker.com/desktop/setup/install/mac-install/).
- [Flutter](https://docs.flutter.dev/get-started/install)
- [npm CLI](https://github.com/npm/cli)

## Build
Before building, set value of sensitive environmental variables (e.g. POSTGRES_PASSWORD) in `compose.yml`.

Build the app by running the following:
    chmod +x ./setup.sh
    ./setup.sh
    rm ./setup.sh

Then, visit the backend and frontend to confirm it worked:

http://localhost:5000/api/v1/seeds 
http://localhost
http://localhost:3000

In the browser, the backend response (at http://localhost:5000) and the frontend page's dev console (at http://localhost) should show json data indicating that it worked:


    {
      "code": 200,
      "result": "success"
    }


So the backend succeeded at connecting to Postgres and running the database migration, and then it succeeded at querying the database. For the frontend's part, it succeeded at hitting the backend endpoint and it received the same response the functioning backend sends out from `/api/v1/seeds`.

## Run

    docker-compose -p full_stack_app up -d
    docker-compose -p full_stack_app down

## Development

After code changes, delete containers and images and re-compose them:

    docker-compose -p full_stack_app down --rmi all -v --remove-orphans && docker-compose build; docker-compose -p full_stack_app up -d
