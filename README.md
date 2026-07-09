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
brew install ivantokar/tap/mage
mage --help
```

`mage` also exists in Homebrew core as the Go Mage build tool. Use the fully qualified formula name above when installing Ivan Tokar's Mage CLI.

If you already installed the Homebrew core formula by running `brew install mage`, remove it first:

```bash
brew uninstall mage
brew install ivantokar/tap/mage
```

If Homebrew reports that `mage` is shadowed by another executable earlier in your `PATH`, remove or rename the old binary before using the Homebrew-installed one:

```bash
rm ~/.local/bin/mage
hash -r
mage --help
```

## Upgrade

```bash
brew update
brew upgrade hokusai
brew upgrade ivantokar/tap/mage
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
