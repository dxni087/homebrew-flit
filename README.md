# Tap de Homebrew para Flit

```sh
brew install --cask dxni087/flit/flit --no-quarantine
```

`--no-quarantine` es necesario mientras Flit no esté notarizada por Apple:
Homebrew marca las descargas con cuarentena y con esa marca macOS bloquea
cualquier app sin notarizar.

La vía sin ese requisito es el instalador de una línea:

```sh
curl -fsSL https://flit.up.railway.app/install | bash
```

Lo que baja `curl` no lleva la marca, así que abre a la primera.
