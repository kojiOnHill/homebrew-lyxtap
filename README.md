# KojiOnHill Lyxtap

The Homebrew's original tap of LyX is disabled on September 1, 2026. This user tap is aimed to be a replacement for it.

## How do I install these formulae?

The commands below will trust these taps. If you don't trust me, please don't do this :) You can inspect the tap's source on this public GitHub repository and compare it to the (disabled) [official Homebrew lyx tap](https://github.com/Homebrew/homebrew-cask/blob/main/Casks/l/lyx.rb).

### Install the cask

Install using the tap's full name:

``` bash
brew install --cask kojionhill/lyxtap/lyx
```

Upgrade likewise:

``` bash
brew upgrade --cask kojionhill/lyxtap/lyx
```

Or, in a `brew bundle` `Brewfile`:

``` ruby
tap "kojionhill/lyxtap"
cask "kojionhill/lyxtap/lyx"
```

Replace `lyx` with `lyx-mirror` or `lyx-nodep` to install the alternative casks instead.

### Allow LyX to be opened

- After the first trial to open LyX, macOS raises a warning that this application can be potentially dangerous.
- Cancel that dialog.
- Go to System Settings -> Privacy and Security -> Security, and allow LyX to be opened.

This warning arises because LyX does not sign its binary by paying a fee to Apple. There is an argument whether an open-source application should pay to a profit organization and LyX does not do so at this moment. So, the warning does not directly mean LyX is dangerous but of course you need to accept the risk clause in the license to use it.

### Alternative methods for casks other that LyX

You can trust the whole tap with:

``` bash
brew trust kojionhill/lyxtap
tap kojionhill/lyxtap
```

You can then install casks like `lyx-mirror` with

``` bash
brew install lyx-mirror
```

But you cannot use this method to install `lyx`, since
running `brew install lyx` will instead try to install
the official LyX tap, which is disabled. You will get 
an error message instead.

## Documentation

For more on trusting taps, see [Homebrew's documentation on trusting taps](https://docs.brew.sh/Tap-Trust).

For other docs, `brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
