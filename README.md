# nijicha/homebrew-tap

Homebrew casks for the LINE Seed fonts that [homebrew/cask](https://github.com/Homebrew/homebrew-cask) doesn't carry. `font-line-seed-jp` is already in homebrew/cask.

| Cask | Font |
| --- | --- |
| `font-line-seed-sans` | LINE Seed Sans (Latin) |
| `font-line-seed-sans-th` | LINE Seed Sans TH (Thai) |
| `font-line-seed-sans-kr` | LINE Seed Sans KR (Korean) |
| `font-line-seed-tw` | LINE Seed TW (Traditional Chinese) |

```sh
brew install --cask nijicha/tap/font-line-seed-sans
```

These casks aren't upstream because [seed.line.me](https://seed.line.me/) serves the zips at unversioned URLs while the folders inside them are versioned ([Homebrew/homebrew-cask#207956](https://github.com/Homebrew/homebrew-cask/pull/207956)). Homebrew's audit requires `sha256 :no_check` for unversioned URLs, so the casks can't pin a checksum. When LINE publishes a new release, the folder inside the zip changes and the install fails with a missing font. The cask's `version` and font paths then need updating.

The fonts are © LY Corporation, released under the SIL Open Font License 1.1.
