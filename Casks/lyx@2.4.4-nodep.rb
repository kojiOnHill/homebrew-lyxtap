cask "lyx@2.4.4-nodep" do
  version "2.4.4"
  sha256 "8f92befe0df9da6f251a5a04a8ef536a03a354cfbb4e6f87dd80e76fa92871c0"

  url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-arm64-cocoa.dmg",
      verified: "ftp.lip6.fr/pub/lyx/bin/"
  name "LyX"
  desc "GUI document processor based on the LaTeX typesetting system without dependencies"
  homepage "https://www.lyx.org/"

  caveats do
    unsigned_accessibility
  end

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
