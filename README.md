# KojiOnHill Lyxtap

The Homebrew's original tap of LyX is disabled on September 1, 2026. This user tap is aimed to be an replacement for it.

## How do I install these formulae?

### First, trust the tap
`brew trust kojionhill/lyxtap`

If you don't trust me, please don't do this :) But the source of the tap can be publicly viewed in this GitHub repository.

### Second, install the tap
`brew install kojionhill/lyxtap/<formula>`

Or `brew tap kojionhill/lyxtap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "kojionhill/lyxtap"
brew "<formula>"
```

### Third, allow LyX to be opened

- After the first trial to open LyX, macOS raises a warning that this application can be potentially dangerous.
- Cancel that dialog.
- Go to System Settings -> Privacy and Security -> Security, and allow LyX to be opened.

This warning arises because LyX does not sign its binary by paying a fee to Apple. There is an argument whether an open-source application should pay to a profit organization and LyX does not do so at this moment. So, the warning does not directly mean LyX is dangerous but of course you need to accept the risk clause in the license to use it.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
