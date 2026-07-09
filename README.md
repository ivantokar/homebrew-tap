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

Mage is distributed from this tap as a prebuilt Apple Silicon bottle. On macOS beta releases, this avoids local Swift builds that can fail when Homebrew requires a newer Xcode or Command Line Tools version.

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
  1. Upload the source or prebuilt archive to the GitHub release.
  2. Update the formula `url` and `sha256`.
  3. Upload the Homebrew bottle archive for supported macOS targets.
  4. Update the formula `bottle do` block.
  5. Commit and push to `main`.
