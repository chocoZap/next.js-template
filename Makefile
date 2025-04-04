# 開発用 Docker
dev-up:
	cd docker && docker compose -f docker-compose.dev.yml up --build

dev-down:
	cd docker && docker compose -f docker-compose.dev.yml down

# 本番用 Docker
prod-up:
	cd docker && docker compose -f docker-compose.prod.yml up --build

prod-down:
	cd docker && docker compose -f docker-compose.prod.yml down

# Docker イメージビルドだけ（タグ付き）
build-dev:
	docker build -f docker/Dockerfile.dev -t my-next-app:dev .

build-prod:
	docker build -f docker/Dockerfile.prod -t my-next-app:prod .

# Biome チェックと整形
lint:
	pnpm lint

format:
	pnpm format

format-check:
	pnpm format:check

test:
	pnpm test

test-watch:
	pnpm test:watch