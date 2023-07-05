---
title: koreader-nix
description: Outil pour mettre à jour KOReader sa liseuse avec Nix
date: 2023-06-25
---

La démarche indiquée par la documentation de KOReader pour effectuer des mises à jour manque de clareté surtout quand on met à jour sa liseuse quelques fois par an.
Il est nécessaire d'aller sur plusieurs pages pour réunir l'ensemble des éléments, bref on s'y perd facilement.

C'est pourquoi j'ai créé cet outil qui permet de mettre à jour quasi-automatiquement KOReader sur sa liseuse avec Nix.

Il suffit d'exécuter la commande suivante et de mettre à jour `KOReader` puis `KFMon` si nécessaire :

```bash
nix run github:gaelreyrol/koreader-nix
```

Et voilà ;-)

Vous pouvez retrouver les sources de ce projet [ici](https://github.com/gaelreyrol/koreader-nix).
