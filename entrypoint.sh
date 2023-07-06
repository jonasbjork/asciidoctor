#!/usr/bin/env bash

if [ -z ${DOCUMENT} ]; then
    echo "Error: DOCUMENT variable is not set, use '-e DOCUMENT=filename.adoc' "
    exit 1
fi

if [ ! -e /data ] ; then
    echo "Error: Directory /data is not found. Use '-v PATH:/data' to set it."
    exit 1
fi

cd /data
mkdir -p out
asciidoctor-pdf -b pdf -d book -o out/book.pdf -r coderay ${DOCUMENT}
