---
title: udev-nix
description: Petit utilitaire pour créer des règles udev avec Nix
date: 2023-06-15
---

Cet utilitaire permet de créer des fichiers de règles udev avec Nix.

Cela permet de créer des dérivations directement utilisables dans une configuration Nix, comme ceci:

```nix
{
  test = mkUdevFile "20-test.rules" {
    rules = with udevLib; {
      "Description on my udev file" = {
        Subsystems = operators.match "usb";
        Tag = [
          (operators.add "uaccess")
        ];
      };
    };
  };
}
```

Ce qui donnera ce résultat dans un fichier :

```text
# Description on my udev file
SUBSYSTEMS=="usb" TAG+="uaccess"
```

Il reprend la documentation man des règles [udev](https://man.archlinux.org/man/udev.7) mais ne teste pas leur validité auprès du système.

Vous pouvez retrouver les sources de ce projet [ici](https://github.com/gaelreyrol/udev-nix).
