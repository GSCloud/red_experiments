#!/bin/bash
# get documentation/ repository: https://github.com/red/docs.git

# list of languages to process
folder="documentation"
lang="cs en"

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
