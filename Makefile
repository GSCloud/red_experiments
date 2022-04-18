#@author Fred Brooker <git@gscloud.cz>
include .env
all: info

info:
	@echo "\e[1;32m👾 Welcome to ${APP_NAME}"
	@echo ""
	@echo "🆘 \e[0;1mmake install\e[0m - install Red"
	@echo "🆘 \e[0;1mmake test\e[0m - run Red test"
	@echo "🆘 \e[0;1mmake docs\e[0m - build docs"
	@echo "🆘 \e[0;1mmake rd\e[0m - build Red docs"

docs:
	@bash ./bin/create_pdf.sh

rd:
	@bash ./bin/make_docs.sh

install:
	@bash ./bin/install_red.sh

test:
	@bash ./bin/test.sh

everything: install test docs
