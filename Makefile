all: info

info:
	@echo "🆘 make doc ➡️ rebuild documentation"
	@echo "🆘 make red ➡️ rebuild official Red documentation"
	@echo "🆘 make install ➡️ reinstall Red"

doc:
	@/bin/bash ./create_pdf.sh

red:
	@/bin/bash ./make_docs.sh

install:
	@/bin/bash ./update_red.sh
