#!/bin/env bash

PARAMS=(DOZENT MODULEDOZENT RAUM FACH STUNDEN USTUNDE SEMESTERFACH FACHBEREICH \
  MODULECURRICULUM SEMESTER MODULE FACHMODULE MSTUDIENGANGRICHTUNG STUDIENGANG)

rm *.json

for i in ${PARAMS[@]}; do
  curl https://fhpwww.gm.fh-koeln.de/hops/api/project/gettables.php?table=${i} \
    > ${i}.json
done
