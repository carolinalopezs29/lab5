#!/bin/bash

#PARA LA MUESTRA 1

size=$(stat -c %s Sample1.fastq)
slice=23

division=$(($size/$slice))

shopt -s extglob
split -d -b $division Sample1.fastq sample1-
rm -v !(*.fastq|splitprogramme.sh|*-00)

#PARA LA MUESTRA 2

size2=$(stat -c %s Sample2.fastq)
slice=23

division2=$(($size2/$slice))

shopt -s extglob
split -d -b $division2 Sample2.fastq sample2-
rm -v !(*.fastq|splitprogramme.sh|*-00)

#PARA LA MUESTRA 3

size3=$(stat -c %s Sample3.fastq)
slice=23

division3=$(($size3/$slice))

shopt -s extglob
split -d -b $division3 Sample3.fastq sample3-
rm -v !(*.fastq|splitprogramme.sh|*-00)

#PARA LA MUESTRA 4

size4=$(stat -c %s Sample4.fastq)
slice=23

division4=$(($size4/$slice))
echo $division4

shopt -s extglob
split -d -b $division4 Sample4.fastq sample4-
rm -v !(*.fastq|splitprogramme.sh|*-00)

