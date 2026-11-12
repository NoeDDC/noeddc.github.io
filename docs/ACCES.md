# noeddc.github.io : accès

Dépôt public : rien de secret ici ni dans le site.

## GitHub (publier)
- Usage : pousser sur `main` publie le site (GitHub Pages, quelques minutes de délai).
- Emplacement : distant `git@github.com:NoeDDC/noeddc.github.io.git` (clé SSH du Mac mini, `~/.ssh/`, non vérifiée par nom) ; `gh` dans `~/.local/bin/gh`, jeton dans `~/.config/gh/hosts.yml`.
- Droits : écriture sur le dépôt `NoeDDC/noeddc.github.io`. Autre machine : se connecter avec `gh auth login` au compte NoeDDC (Noé).

## AdMob
- `app-ads.txt` contient l'identifiant d'éditeur AdMob de Noé (public par nature). Le compte AdMob lui-même est chez Noé ; une IA n'y a pas accès.

## Fichiers liés hors dépôt
- Source de la page des jeux : `~/Developer/STUDIO-JEUX/campagne/page_jeux/`, générée par `~/Developer/STUDIO-JEUX/outils/preparer_comptes.py`.
- Mentions légales servies par un autre dépôt : `https://noeddc.github.io/oratime-site/mentions-legales.html` (dépôt `oratime-site`).

## Ce qu'une IA ne peut pas faire seule
- Déclarer l'URL marketing dans App Store Connect et Google Play pour chaque jeu (à faire avec une nouvelle version, accord de Noé).
- Vérifier dans AdMob que le fichier est reconnu (compte de Noé).
