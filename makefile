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
	npm i