CURRENT_BRANCH="$(shell git rev-parse --abbrev-ref HEAD)"

default: help

help:
	@echo "Usage:"
	@echo "     make [command]"
	@echo "Available commands:"
	@grep '^[^#[:space:]].*:' Makefile | grep -v '^default' | grep -v '^_' | sed 's/://' | xargs -n 1 echo ' -'

build:
	npm run build

build-container-dev:
	docker build -t hgraca/lib-name:app.dev.node -f ./build/container/dev/app.dockerfile ./build/container/dev
	docker push hgraca/lib-name:app.node

build-container-prd:
	docker build -t hgraca/lib-name:app.prd.node -f ./build/container/prd/app.dockerfile ./build/container/prd
	docker push hgraca/lib-name:app.node

clean:
	npm run clean

coverage:
	npm run test:coverage
	npm run lint

dep-install:
	npm install

dep-update:
	npm update

format:
	npm run format

lint:
	npm run lint

lint-fix:
	npm run lint:fix

run:
	npm run run

test:
	npm run test
	npm run lint

test-acc:
	npm run test:acc
	npm run lint

test-func:
	npm run test:func
	npm run lint

test-int:
	npm run test:int
	npm run lint

test-unit:
	npm run test:unit
	npm run lint
