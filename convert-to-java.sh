#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail

echo "package io.archilab.prox.moduleservice.hops;"
echo ""
echo "import com.fasterxml.jackson.annotation.JsonIgnoreProperties;"
echo "import com.fasterxml.jackson.annotation.JsonProperty;"
echo "import lombok.Getter;"
echo "import lombok.ToString;"
echo ""
echo "@ToString"
echo "@Getter"
echo "@JsonIgnoreProperties(ignoreUnknown = true)"
echo "public class HopsClass {"

while read line; do
  echo ""
  echo "@JsonProperty(\"$line\")"
  echo "private String $line;"
done

echo ""
echo "}"
