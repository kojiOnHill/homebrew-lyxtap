cask "lyx@2.4.5" do
  version "2.4.5"
  sha256 "6f64505df9d5cd8016256421ec4316f52dd596b01bcbe6fa7f9fe04f54f4e376"

  url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-arm64-cocoa.dmg",
      verified: "ftp.lip6.fr/pub/lyx/bin/"
  name "LyX"
  desc "GUI document processor based on the LaTeX typesetting system"
  homepage "https://www.lyx.org/"

  caveats do
    unsigned_accessibility
  end

  depends_on cask: [ "mactex", "skim" ]

  livecheck do
    url "https://www.lyx.org/Download"
    regex(/LyX[._-]v?(\d+(?:\.\d+)+)\+qt5/i)
  end

  app "LyX.app", target: "LyX-#{version}.app"
  
  zap trash: [
    "~/Library/Application Support/LyX-#{version.major_minor}",
    "~/Library/Caches/com.apple.python/Applications/LyX-#{version}.app",
    "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
    "~/Library/Preferences/org.lyx.lyx.plist",
    "~/Library/Saved Application State/org.lyx.lyx.savedState",
  ]
end
