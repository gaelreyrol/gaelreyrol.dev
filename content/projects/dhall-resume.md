---
title: dhall-resume
description: Un bibliothèque liant Dhall et le schema JSON Resume
date: 2022-06-22
---

dhall-resume rassemble la puissance de [Dhall](https://dhall-lang.org/) un langage de configuration proche du JSON avec des fonctions, types, imports et [JSON Resume](https://jsonresume.org/) un standard permettant de construire son curriculum vitae.

Voici un bout de code Dhall faisant référence à mon propre CV :

```dhall
let Resume =
      https://raw.githubusercontent.com/gaelreyrol/dhall-resume/main/package.dhall
        sha256:3201ac0030b61bba68a730b0dea2c61d91a537e59a5c28303da7571646c49735

let monthly = { per = "month" }

in  Resume.Basic::{
    , basics = Some Resume.Basics::{
      , name = Some "Gaël Reyrol"
      , image = Some "https://gaelreyrol.dev/avatar.jpeg"
      , email = Some "me@gaelreyrol.dev"
      , url = Some "https://gaelreyrol.dev"
      , label = Some "Développeur Fullstack & Ops"
      , location = Some Resume.Location::{
        , city = Some "Lille"
        , postalCode = Some "59000"
        , region = Some "Nord"
        , countryCode = Some "FR"
        }
      }
  }
```

Il suffit ensuite alors d'y appliquer `dhall-to-json` pour générer un CV respectant le standard JSON Resume.

Vous pouvez retrouver les sources de ce projet [ici](https://github.com/gaelreyrol/dhall-resume).
