# ivantokar/homebrew-tap

Homebrew tap for ivantokar CLI formulae.

## Install

```bash
brew tap ivantokar/homebrew-tap
brew install hokusai
hokusai --help
```

```bash
brew tap ivantokar/homebrew-tap
brew install mage
mage --help
```

## Upgrade

```bash
brew update
brew upgrade hokusai
brew upgrade mage
```

## Available Formulae

- `hokusai`
- `mage`

## Maintainer Notes

- Formula files live in `Formula/*.rb`.
- For each new CLI release:
  1. Update `url` to the new tag tarball.
  2. Update `sha256`.
  3. Commit and push to `main`.
