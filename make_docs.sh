#!/bin/bash
# docs/ repo: https://github.com/red/docs.git

# English
cd ./docs/en/

for i in *.adoc
do
  docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf "$i"
done

mv *.pdf ../../PDF/en/
cd ../..


# Czech
cd ./docs/cs/

for i in *.adoc
do
  docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf "$i"
done

mv *.pdf ../../PDF/cs/
cd ../..
