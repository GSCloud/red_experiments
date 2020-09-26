all: info

info:
	@echo "\e[1;32m👾 Welcome to Red Experiments 👾"
	@echo "🆘 \e[0;1mmake doc\e[0m - rebuild documentation"
	@echo "🆘 \e[0;1mmake everything\e[0m - run all make points"
	@echo "🆘 \e[0;1mmake install\e[0m - (re)install Red"
	@echo "🆘 \e[0;1mmake reddocs\e[0m - rebuild Red documentation"
	@echo "🆘 \e[0;1mmake test\e[0m - test Red"

doc:
	@/bin/bash ./create_pdf.sh

reddocs:
	@/bin/bash ./make_docs.sh

install:
	@/bin/bash ./install_red.sh

test:
	@/bin/bash ./test.sh

everything: doc reddocs install test
