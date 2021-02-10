all: info

info:
	@echo "\n\e[1;32m👾 Welcome to Red Experiments 👾\n"

	@echo "🆘 \e[0;1mmake install\e[0m - (re)install Red"
	@echo "🆘 \e[0;1mmake test\e[0m - Red Hello World test\n"

	@echo "🆘 \e[0;1mmake docs\e[0m - rebuild documentation"
	@echo "🆘 \e[0;1mmake reddocs\e[0m - rebuild Red documentation\n"

docs:
	@/bin/bash ./bin/create_pdf.sh

reddocs:
	@/bin/bash ./bin/make_docs.sh

install:
	@/bin/bash ./bin/install_red.sh

test:
	@/bin/bash ./bin/test.sh

everything: install test docs
