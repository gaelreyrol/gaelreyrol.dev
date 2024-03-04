---
title: OpenTelemetry Bundle
description: Un bundle Symfony pour OpenTelemetry PHP
date: 2023-11-04
---

OpenTelemetry propose déjà 2 paquets pour Symfony :

- `open-telemetry/opentelemetry-auto-symfony`
- `open-telemetry/symfony-sdk-bundle`

Malheureusement ces 2 paquets sont incomplets et ne correspondent pas à la philosiphie Symfony:

Le paquet `open-telemetry/opentelemetry-auto-symfony` auto-instrumente une application Symfony de manière unilatérale sans pouvoir choisir précisément quoi instrumenter.
Le paquet `open-telemetry/symfony-sdk-bundle` permet d'injecter les services qui fournissent les "traceurs" mais sont API est limitée et ne s'intègre pas avec le paquet d'auto-instrumentation.

Ce projet a pour objectif de regrouper ces 2 paquets en un seul, en proposant une configuration complète via Symfony et une instrumentation à la demande sur tous les composants Symfony disponibles et traçables.

Je travaille activement sur mon temps personnel pour faire avancer ce projet et est disponible ici : <https://github.com/FriendsOfOpenTelemetry/opentelemetry-bundle>.