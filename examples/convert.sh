#!/bin/bash

URL="http://cidades.ibge.gov.br/comparamun/compara.php?idtema=1&codv=v01&coduf=43"
LOCALE="pt_BR.UTF-8"
FILENAME="populacao-rs"

rows convert --input-locale $LOCALE $URL $FILENAME.csv
rows convert $FILENAME.csv $FILENAME.html
rows convert $FILENAME.html $FILENAME.xls
rows convert $FILENAME.xls $FILENAME.txt
