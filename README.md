# Prox HoPS API

The purpose of this repo is to provide an emergency backup of the new HoPS API data and help to generate basic Java entities from the data.

## Backup

```bash
./curl-hops
```

Curls the REST endpoints of the new HoPS API, saves the responses as JSON files and formats them
with [Prettier](https://prettier.io/).

## Conversion

Open the generated JSON files, e. g. DOZENT.json, remove everything but a single set of JSON properties and save it as a text file. The result should look something like this:

```text
DOZENTKUERZEL
FACHBEREICH
ANREDE
TITEL
VORNAME
NACHNAME
FUNKTION
ZEITSTEMPEL
```

Then save it as a text file and call the conversion script, e. g.:

```bash
./convert-to-java dozent.txt dozent.txt2
```
