SHELL := /bin/bash
BUNDLE = /home/gusi/gems/bin/bundle

.PHONY: serve build-prod clean deploy do-deploy

serve:
	$(BUNDLE) exec jekyll serve

build-prod:
	JEKYLL_ENV=production $(BUNDLE) exec jekyll build -d dist

clean:
	rm -rf dist/*

deploy: clean build-prod do-deploy

do-deploy:
	cd dist && git add --all && git commit -sm "Deploy" && git push deploy +gh-pages && cd ..
