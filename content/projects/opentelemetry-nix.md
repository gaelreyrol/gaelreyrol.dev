---
title: OpenTelemetry Nix
description: Une librairie et dépôt Nix dédié à OpenTelemetry
date: 2023-11-24
---

OpenTelemetry Nix propose une librairie pour construire des collecteurs OpenTelemetry personalisés et des paquets liés à l'écosystème OpenTelemetry.

Voici un exemple de code Nix permettant de construire un collecteur personnalisé :


```nix
{
    packages.x86_64-linux.default = pkgs.buildOtelCollector {
        pname = "otel-collector-debugexporter";
        version = "1.0.0";
        config = {
            exporters = [
                { gomod = "go.opentelemetry.io/collector/exporter/debugexporter v0.90.0"; }
            ];
        };
        vendorHash = "sha256-2g0xe9kLJEbgU9m+2jmWA5Gym7EYHlelsyU0hfLViUY=";
    };
}
```

Vous pouvez retrouver les sources de ce projet [ici](https://github.com/FriendsOfOpenTelemetry/opentelemetry-nix).