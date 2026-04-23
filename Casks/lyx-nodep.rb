cask "lyx-nodep" do
  version "2.5.1"
  sha256 "1c3a8cbf7c81e9d06b53e1ba291119363881b347722816cf53b6b912b3589370"

  url "https://ftp.lip6.fr/pub/lyx/devel/lyx-#{version.major_minor}/LyX-#{version.sub(/-RC/,"~RC")}+qt6-x86_64-arm64-cocoa.dmg",
      verified: "ftp.lip6.fr/pub/lyx/devel/"
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
  binary "#{appdir}/LyX-#{version}.app/Contents/MacOS/inkscape", target: "lyx-inkscape"
  binary "#{appdir}/LyX-#{version}.app/Contents/MacOS/lyx"
  binary "#{appdir}/LyX-#{version}.app/Contents/MacOS/lyxclient"
  binary "#{appdir}/LyX-#{version}.app/Contents/MacOS/lyxconvert"
  binary "#{appdir}/LyX-#{version}.app/Contents/MacOS/lyxeditor"
  binary "#{appdir}/LyX-#{version}.app/Contents/MacOS/maxima", target: "lyx-maxima"
  binary "#{appdir}/LyX-#{version}.app/Contents/MacOS/tex2lyx"

  zap trash: [
    "~/Library/Application Support/LyX-#{version.major_minor}",
    "~/Library/Caches/com.apple.python/Applications/LyX-#{version}.app",
    "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
    "~/Library/Preferences/org.lyx.lyx.plist",
    "~/Library/Saved Application State/org.lyx.lyx.savedState",
  ]
end
