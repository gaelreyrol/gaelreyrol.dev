---
title: Game of Life
description: Project pédagogique pour m'initier au Web Assembly
date: 2020-12-21
---

Ce projet pédagogique basé sur [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) est écrit en **Rust** et compilé en **WebAssembly** avec les outils [wasm-bindgen](https://github.com/rustwasm/wasm-bindgen) et [wasm-pack](https://github.com/rustwasm/wasm-pack).

Utiliser l'option de **build** `--target web` me permet de directement importer le fichier wasm dans un module javascript sans utiliser de bundler.

Vous pouvez retrouver les sources de ce projet [ici](https://github.com/gaelreyrol/game-of-life-wasm).

<iframe
  src="https://gaelreyrol.github.io/game-of-life-wasm"
  class="overflow-hidden"
  width="750"
  height="750"
/>
