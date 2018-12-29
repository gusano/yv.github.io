SHELL := /bin/bash
BUNDLE = /home/gusi/gems/bin/bundle

.PHONY: serve build-prod deploy

serve:
	$(BUNDLE) exec jekyll serve

build-prod:
	JEKYLL_ENV=production $(BUNDLE) exec jekyll build -d dist

deploy:
	rm -rf dist && mkdir dist && build-prod
	cd dist
	git add --all
	git commit -sm "Deploy"
	git push origin gh-pages
	cd ..
