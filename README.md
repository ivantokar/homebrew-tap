# ivantokar/homebrew-tap

Homebrew tap for ivantokar CLI formulae.

## Install

```bash
brew install ivantokar/tap/hokusai
hokusai --version
```

`hokusai` is a prebuilt Apple Silicon binary (macOS), so nothing is compiled. It needs the `vips` and `cairo` formulae, which Homebrew installs with it.

Homebrew 6 asks you to trust third-party taps. Trust this one once, for all its formulae:

```bash
brew trust ivantokar/tap
```

## Upgrade

```bash
brew update
brew upgrade ivantokar/tap/hokusai
```

## Available Formulae

- `hokusai`

## Maintainer Notes

- Formula files live in `Formula/*.rb`.
- For each new CLI release:
  1. Hokusai: the release workflow in `ivantokar/hokusai` attaches `hokusai-<version>-arm64-apple-darwin.tar.gz` and its `.sha256`.
  2. Update the formula `url` and `sha256` (for Hokusai, the value in the `.sha256` asset).
  3. Upload the Homebrew bottle archive for supported macOS targets.
  4. Update the formula `bottle do` block.
  5. Commit and push to `main`.
