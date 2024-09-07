# homebrew-fafarunner

[![Test](https://github.com/fafarunner/homebrew-fafarunner/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/fafarunner/homebrew-fafarunner/actions/workflows/test.yml)
[![Excavator](https://github.com/fafarunner/homebrew-fafarunner/actions/workflows/excavator.yml/badge.svg)](https://github.com/fafarunner/homebrew-fafarunner/actions/workflows/excavator.yml)
[![Add version](https://github.com/fafarunner/homebrew-fafarunner/actions/workflows/version.yml/badge.svg)](https://github.com/fafarunner/homebrew-fafarunner/actions/workflows/version.yml)

## Install

`brew install fafarunner/fafarunner/fafarunner`

Or `brew tap fafarunner/fafarunner` and then `brew install fafarunner`.

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "fafarunner/fafarunner"
brew "fafarunner"
```

## Debug

`brew audit --strict --fix --cask fafarunner`

`brew style fafarunner/fafarunner`

`brew livecheck --debug fafarunner`

## Documentation

Your taps are Git repositories located at `$(brew --repository)/Library/Taps`

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
