#Este es un comentario

.PHONY: build dev install

build:
	rm -rf dist;
	mkdir dist;
	mkdir dist/css;
	mkdir dist/img;
	mkdir dist/fonts
	npm run "img:cp";
	npm run "html:cp";
	npm run "fonts:cp";
	npm run "sass:build"

dev:
	npm run dev

install:
	rm -rf node_modules
	mkdir -p /usr/src/temporal/node_modules
	cp package.json /usr/src/temporal
	npm install --prefix /usr/src/temporal
	mv -f /usr/src/temporal/node_modules /usr/src/code
