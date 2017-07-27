#!/bin/bash
EXTENSION=.html
FILENAME=GPy

for file in $(ls ./testdatasets/)
do
export file
jupyter nbconvert --to html --ExecutePreprocessor.enabled=True --ExecutePreprocessor.timeout=-1 --execute Pete-Hackday-testset.ipynb
mv Pete-Hackday-testset.html $(echo ${FILENAME}_${file}${EXTENSION})
done
