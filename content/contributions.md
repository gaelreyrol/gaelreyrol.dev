---
title: Mes contributions
description: Mes contributions "notables"
---

Voici un liste de contributions que je considère comme intéressantes:

### Nixpkgs

Je suis contributeur irrégulier sur le dépôt de paquets Nix.

Mes contributions: <https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Agaelreyrol>

Grâce à Repology, vous pouvez retrouver la liste des paquets que je maintiens sur Nixpkgs: <https://repology.org/maintainer/me@gaelreyrol.dev>

### Doctrine Behavioral Extensions: Mapping - Metadata for inherited mapped classes are not well collected

J'ai rencontré un problème lors d'un cas particulier, la récupération depuis le cache d'une entité qui hérite d'une classe de type `MappedSuperclass`. Le moteur chargé de récupérer les méta-données cachées pour cette entité n'était pas fonctionnel dans le cas où un changement/rechargement de pilote de cache était effectué. J'ai proposé une solution ainsi que des tests qui ont été accepté.

- J'explique plus en détails et en anglais le problème ici : <https://github.com/doctrine-extensions/DoctrineExtensions/issues/2600>
- La correction proposé sur la base de mon explication et preuve de concept : <https://github.com/doctrine-extensions/DoctrineExtensions/pull/2651>

### php-memory-profiler: Allow output_format to be defined from ini setting

L'extension PHP Memory profiler ne permettait pas de configurer le format de fichier de décharge depuis une configuration PHP `.ini`. J'ai proposé l'ajout du paramètre `memprof.output_format`.

Contribution: <https://github.com/arnaud-lb/php-memory-profiler/pull/97>

