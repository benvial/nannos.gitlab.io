

SHELL := /bin/bash

## Push to gitlab
save:
	@echo "Pushing to gitlab..."
	git add -A
	@read -p "Enter commit message: " MSG; \
	git commit -a -m "$$MSG"
	git push origin master

	
## Push to gitlab (skipping continuous integration)
save-noci:
	@echo "Pushing to gitlab (skip ci)..."
	git add -A
	@read -p "Enter commit message: " MSG; \
	git commit -a -m "$$MSG [skip ci]"
	git push origin master
