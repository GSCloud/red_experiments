#!/bin/bash
# first get repository: git clone https://github.com/red/docs.git documentation

# destination
folder="documentation"

# list of languages to process
lang="cs en fr ja"

mkdir -p $folder
for l in $lang
do
  mkdir -p ./PDF/$l
  mkdir -p ./EPUB/$l
  if [ ! -d "./$folder/$l/" ]; then continue; fi

  cd ./$folder/$l/
  for i in *.adoc
  do
    echo -en "$l: $i\n"
    docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor-epub3 "$i"
    docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf "$i"
    mv -f *.pdf ../../PDF/$l/
    mv -f *.epub ../../EPUB/$l/
  done
  cd ../..
done

echo -en "\n\nDone.\n"
