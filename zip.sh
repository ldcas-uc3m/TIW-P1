#!/bin/bash
# Bash script to zip the whole project in order to make it deriverable
# please make sure zip, pv and texlive are installed

OUTFILE=../GRUPO81.02.Practica1.zip


# compile the report (and save it to root folder)
echo "Compiling the report..."
cd report

pdflatex report.tex -halt-on-error > /dev/null
cp report.pdf ..

cd ..

cd src

# <clean stuff up>

cd ..

# TODO: Compile war

# zip it (excluding useless stuff)
echo "Zipping..."
zip -r $OUTFILE . -x zip.sh report/\* \*.git\* img/\* README.md src/\* src/\*

# cleanup
echo "Cleaning up..."
rm report.pdf
