COMPOSER_ARGS = "--ignore-platform-reqs --no-ansi --no-interaction --no-plugins --no-progress --no-scripts --no-suggest --optimize-autoloader"

sync:
	@echo "syncing upstream into develop..."
	@./bin/sync-upstream.sh

composer-repo:
	@echo "Adding BZTRS composer repo"
	composer config repositories.repo-name composer https://v2.packages.bztrs.eu/

composer-install: composer-repo
	@echo "Installing composer dependencies"
	composer install $(shell echo $(COMPOSER_ARGS))

composer-dependencies: composer-repo
	@echo "Installing composer dependencies"
	composer require $(shell echo $(shell cat .dependencies)) $(shell echo $(COMPOSER_ARGS))

composer-update: composer-repo
	@echo "Updating composer dependencies"
	composer update $(shell echo $(COMPOSER_ARGS))
