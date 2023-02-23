dependencies:
	./scripts/install.sh

build:
	stack build --copy-bins

start:
	./.stack-bin/server-exe

dev:
	nodemon -w ./src -x "sh ./scripts/reload.sh" -e "hs"