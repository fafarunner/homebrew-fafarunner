# homebrew-fafarunner

> FaFa Runner for Homebrew.

[![brew test-bot](https://github.com/fafarunner/homebrew-fafarunner/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/fafarunner/homebrew-fafarunner/actions/workflows/tests.yml)

## Install

```shell
brew install fafarunner/fafarunner/fafarunner
```

Or

```shell
brew tap fafarunner/fafarunner

brew install fafarunner
```

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
# Brewfile
tap "fafarunner/fafarunner"
brew "fafarunner"
```

## Debug

[Adding Software to Homebrew](https://docs.brew.sh/Adding-Software-to-Homebrew)

```shell
brew audit --strict --fix --cask fafarunner
```

[Brew Livecheck](https://docs.brew.sh/Brew-Livecheck)

```shell
brew livecheck --debug fafarunner
```

## Release

[How to Open a Homebrew Pull Request](https://docs.brew.sh/How-To-Open-a-Homebrew-Pull-Request)

```shell
brew bump --open-pr fafarunner
```

## Documentation

Your taps are Git repositories located at `$(brew --repository)/Library/Taps`

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
