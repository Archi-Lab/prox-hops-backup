#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail

api_url='https://fhpwww.gm.fh-koeln.de/hops/api/project/gettables.php'
tables=(
  'DOZENT'
  'MODULEDOZENT'
  'RAUM'
  'FACH'
  'STUNDEN'
  'USTUNDE'
  'SEMESTERFACH'
  'FACHBEREICH'
  'MODULECURRICULUM'
  'SEMESTER'
  'MODULE'
  'FACHMODULE'
  'MSTUDIENGANGRICHTUNG'
  'STUDIENGANG'
)

rm ./*.json

for table in "${tables[@]}"; do
  curl "${api_url}?table=${table}" > "${table}.json"
done

npx prettier --write ./*.json
