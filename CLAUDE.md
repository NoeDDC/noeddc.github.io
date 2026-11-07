# noeddc.github.io
Site racine GitHub Pages de Noé, créé le 2026-11-07. Il sert seulement à publier `app-ads.txt` pour AdMob, qui doit être à la racine du domaine.

## Démarrer
Vérifier : `curl -s https://noeddc.github.io/app-ads.txt`. Publier : commit et push sur `main`.

## Organisation
- `app-ads.txt` : vendeur autorisé, identifiant d'éditeur AdMob, non secret.
- `.nojekyll` : fichiers servis tels quels.

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
