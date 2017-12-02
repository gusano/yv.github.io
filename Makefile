SHELL := /bin/bash
BUNDLE = /home/gusi/gems/bin/bundle

serve:
	$(BUNDLE) exec jekyll serve

build-prod:
	JEKYLL_ENV=production $(BUNDLE) exec jekyll build

.PHONY: serve build-prod
