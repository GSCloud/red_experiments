all: info

info:
	@echo "\e[1;32m👾 Welcome to Red Experiments 👾\n"

	@echo "🆘 \e[0;1mmake docs\e[0m - rebuild documentation"
	@echo "🆘 \e[0;1mmake install\e[0m - (re)install Red"
	@echo "🆘 \e[0;1mmake reddocs\e[0m - rebuild Red documentation"
	@echo "🆘 \e[0;1mmake test\e[0m - test Red"

docs:
	@/bin/bash ./create_pdf.sh

reddocs:
	@/bin/bash ./make_docs.sh

install:
	@/bin/bash ./install_red.sh

test:
	@/bin/bash ./test.sh

everything: install test doc reddoc
