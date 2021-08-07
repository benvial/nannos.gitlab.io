

SHELL := /bin/bash

save:
	@echo "Pushing to gitlab..."
	git add -A
	@read -p "Enter commit message: " MSG; \
	git commit -a -m "$$MSG"
	git push origin master
