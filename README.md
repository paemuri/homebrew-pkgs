# Homebrew pkgs

[![License][badge-1-img]][badge-1-link]

## About

This repo maintains Homebrew packages. To enable them to be installed locally by
you, run the following:

```sh
brew tap paemuri/pkgs
brew trust paemuri/pkgs # Or do individually by package
```

## Packages

### Torresmo

> [homepage][1]

#### Installation

```sh
# Run tap and trust, documented in "About"
brew install torresmo
```

Or directly:

```sh
brew install paemuri/pkgs/torresmo
```

## Source code

The main repository is on [SourceHut][source-srht]. Mirrors exist on
[Codeberg][source-codeberg] and [GitHub][source-github] for convenience, but
they might occasionally be outdated.

## License and contribution

All original code is licensed under the
[GNU Affero General Public License 3.0 or later][license-code].

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you shall be licensed under the same license as
the material to which it is contributed, without any additional terms or
conditions.

### Third-party and exceptions

The packages in this repository are metadata and build scripts. The software
they package remains under its own license.

[1]: https://sr.ht/~paemuri/torresmo

[badge-1-img]: https://img.shields.io/badge/license-AGPL--3.0--or--later-green?style=flat-square
[badge-1-link]: ./LICENSE

[source-srht]: https://git.sr.ht/~paemuri/homebrew-pkgs
[source-codeberg]: https://codeberg.org/paemuri/homebrew-pkgs
[source-github]: https://github.com/paemuri/homebrew-pkgs

[license-code]: ./LICENSES/AGPL-3.0-or-later.txt
