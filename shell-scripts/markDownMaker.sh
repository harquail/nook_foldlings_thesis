#!/bin/bash
newFileSuffix=tex # we will make all files into .md

SAVEIFS=$IFS
IFS=$(echo "\n")
# set me
FILES=../markdown_chapters/*.md
# BIBLIO=../myrefs.bib
echo "" > includes.md
for file in $FILES;
do
  filename=${file%.md} # remove suffix
  destination=$(basename $filename)
  newname=../chapters/$destination.$newFileSuffix # make the new filename
#   echo $"\include{chapters/$destination.$newFileSuffix}"
  # pwd
  pandoc ../markdown_chapters/$file -o $newname --natbib --bibliography=$BIBLIO
  echo $"\include{chapters/$destination}" >> includes.md
  # o includes.md
  # perform pandoc operation on the file,
                                                     # --output to newname
done
IFS=$SAVEIFS
# pandoc Catharsis.html -o test
