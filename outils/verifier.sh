#!/bin/bash
# Vérifie le site noeddc.github.io sans rien modifier : fichiers locaux, copie de la page des jeux, site en ligne.
set -u
cd "$(dirname "$0")/.."
ok=0; ko=0; av=0
bon() { echo "OK    $1"; ok=$((ok+1)); }
mal() { echo "ECHEC $1"; ko=$((ko+1)); }
att() { echo "ATTENTION $1"; av=$((av+1)); }
SRC="$HOME/Developer/STUDIO-JEUX/campagne/page_jeux"

for f in app-ads.txt .nojekyll jeux/index.html; do [ -f "$f" ] || mal "fichier manquant : $f"; done && bon "fichiers du site présents"
if [ -d "$SRC" ]; then
  diff -rq jeux "$SRC" >/dev/null && bon "jeux/ identique à la source STUDIO-JEUX" || att "jeux/ diffère de $SRC (régénérer et recopier ?)"
else att "source absente : $SRC"; fi
en_ligne=$(curl -s --max-time 10 https://noeddc.github.io/app-ads.txt)
[ "$en_ligne" = "$(cat app-ads.txt)" ] && bon "app-ads.txt en ligne identique au fichier local" || mal "app-ads.txt en ligne différent ou injoignable"
code=$(curl -s -o /dev/null -w '%{http_code}' --max-time 10 https://noeddc.github.io/jeux/ || echo 000)
[ "$code" = 200 ] && bon "page des jeux en ligne ($code)" || mal "page des jeux : code $code"
code=$(curl -s -o /dev/null -w '%{http_code}' --max-time 10 https://noeddc.github.io/oratime-site/mentions-legales.html || echo 000)
[ "$code" = 200 ] && bon "mentions légales liées en ligne ($code)" || att "mentions légales : code $code"
distant=$(git ls-remote origin refs/heads/main 2>/dev/null | cut -f1)
[ -n "$distant" ] && [ "$(git rev-parse HEAD)" = "$distant" ] && bon "main identique au main de GitHub" || att "main local différent de GitHub (commit non poussé ?) ou GitHub injoignable"
echo "Bilan : $ok OK, $av attention, $ko échec"
[ $ko -eq 0 ]
