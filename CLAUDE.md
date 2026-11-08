# noeddc.github.io
Site racine GitHub Pages de Noé, créé le 2026-11-07. Il publie `app-ads.txt` pour AdMob, qui doit être à la racine du domaine, et la page des cinq jeux (`jeux/`, en ligne depuis le 2026-11-08).

## Démarrer
Vérifier : `curl -s https://noeddc.github.io/app-ads.txt` et `curl -sI https://noeddc.github.io/jeux/`. Publier : commit et push sur `main`.

## Organisation
- `app-ads.txt` : vendeur autorisé, identifiant d'éditeur AdMob, non secret.
- `.nojekyll` : fichiers servis tels quels.
- `jeux/` : page des cinq jeux, lien de bio des comptes. Copie de `~/Developer/STUDIO-JEUX/campagne/page_jeux/`, refaite par `~/Developer/STUDIO-JEUX/outils/preparer_comptes.py` : régénérer, recopier ici, puis pousser.

## Où travailler
`~/Developer/noeddc.github.io`, branche `main`, dépôt public `NoeDDC/noeddc.github.io`.

## Accès
Aucun, à part `gh` pour pousser.

## Décisions
Dépôt à part : `oratime-site` est servi sous un sous-chemin, or app-ads.txt doit être à la racine.

## Prochaines étapes
Déclarer une URL marketing `https://noeddc.github.io` sur chaque jeu à sa prochaine version, pour qu'AdMob trouve le fichier.

## Pièges
Ce dépôt est public : aucun secret.
