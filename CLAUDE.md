# noeddc.github.io
Site racine GitHub Pages de Noé, créé le 2026-11-07. Il publie `app-ads.txt` pour AdMob, qui doit être à la racine du domaine, et la page des cinq jeux (`jeux/`, en ligne depuis le 2026-11-08).

## Démarrer
- Vérifier (ne modifie rien) : `outils/verifier.sh` (fichiers, copie de la page des jeux, site en ligne, `main` poussé).
- À la main : `curl -s https://noeddc.github.io/app-ads.txt` et `curl -sI https://noeddc.github.io/jeux/`.
- Publier : commit et push sur `main` (GitHub Pages sert le site quelques minutes après).

## Organisation
- `app-ads.txt` : vendeur autorisé, identifiant d'éditeur AdMob, non secret.
- `.nojekyll` : fichiers servis tels quels.
- `jeux/` : page des cinq jeux, lien de bio des comptes. Copie de `~/Developer/STUDIO-JEUX/campagne/page_jeux/`, refaite par `~/Developer/STUDIO-JEUX/outils/preparer_comptes.py` : régénérer, recopier ici, puis pousser.
- `docs/ACCES.md` : accès. `outils/verifier.sh` : vérification.

## Où travailler
`~/Developer/noeddc.github.io`, branche `main`, dépôt public `NoeDDC/noeddc.github.io`, servi sur https://noeddc.github.io. Pas de service local.

## Accès
Seulement `gh` ou la clé SSH pour pousser : voir [docs/ACCES.md](docs/ACCES.md).

## Décisions
- Dépôt à part : `oratime-site` est servi sous un sous-chemin, or app-ads.txt doit être à la racine.
- La page des jeux est une copie générée ailleurs (STUDIO-JEUX) : on ne l'édite pas ici, sinon la prochaine régénération écrase la retouche.

## État au 2026-11-12
Fait et vérifié :
- `outils/verifier.sh` lancé le 2026-11-12 : 6 OK, 0 attention : `app-ads.txt` en ligne identique au fichier, `/jeux/` et les mentions légales liées répondent 200, `jeux/` identique à la source STUDIO-JEUX.
- Page des jeux : 5 liens App Store, 4 liens Google Play (Chut Chut ajouté le 2026-11-10 ; Tchou Tchou n'a pas de lien Play).

Pas vérifié :
- Si AdMob a reconnu `app-ads.txt` (compte AdMob de Noé).
- Si une URL marketing `https://noeddc.github.io` est déjà déclarée sur certains jeux.

Pas fait :
- Déclaration de l'URL marketing sur chaque jeu.

## Prochaines étapes
1. Déclarer une URL marketing `https://noeddc.github.io` sur chaque jeu à sa prochaine version, pour qu'AdMob trouve le fichier (avec la publication du jeu, accord de Noé).
2. Quand Tchou Tchou sort sur Android : régénérer la page dans STUDIO-JEUX, recopier `jeux/`, pousser.

## Pièges
- Ce dépôt est public : aucun secret.
- `app-ads.txt` doit rester à la racine du domaine, pas dans un sous-dossier.
