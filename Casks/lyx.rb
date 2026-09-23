cask "lyx" do
  version "2.5.3"

  on_macos do
		on_arm do
			sha256 "fd8cf48332bd1efb9e402ee2077816343c759875ba04def7082c3af14daa3943"
			url "https://ftp.lip6.fr/pub/lyx/bin/#{version}/LyX-#{version.sub(/-RC/,"~RC")}+qt6-x86_64-arm64-cocoa.dmg"
		end
		on_intel do
			sha256 "e90961c28009117d69bff728ddf079f3cd14926f7700a16dc4ecb607d5599eec"
			url "https://ftp.lip6.fr/pub/lyx/bin/#{version}/LyX-#{version.sub(/-RC/,"~RC")}+qt5-x86_64-cocoa.dmg"
		end
  end
  on_linux do
    depends_on "gcc"
  end
	
  name "LyX"
  desc "GUI document processor based on the LaTeX typesetting system"
  homepage "https://www.lyx.org/"

  caveats do
    unsigned_accessibility
  end

  depends_on cask: [ "mactex", "skim" ]

  livecheck do
    url "https://www.lyx.org/Download"
    regex(/LyX[._-]v?(\d+(?:\.\d+)+)\+qt(\d+)/i)
  end

  app "LyX.app"
  binary "#{appdir}/LyX.app/Contents/MacOS/inkscape", target: "lyx-inkscape"
  binary "#{appdir}/LyX.app/Contents/MacOS/lyx"
  binary "#{appdir}/LyX.app/Contents/MacOS/lyxclient"
  binary "#{appdir}/LyX.app/Contents/MacOS/lyxconvert"
  binary "#{appdir}/LyX.app/Contents/MacOS/lyxeditor"
  binary "#{appdir}/LyX.app/Contents/MacOS/maxima", target: "lyx-maxima"
  binary "#{appdir}/LyX.app/Contents/MacOS/tex2lyx"

  zap trash: [
    "~/Library/Application Support/LyX-#{version.major_minor}",
    "~/Library/Caches/com.apple.python/Applications/LyX-#{version}.app",
    "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
    "~/Library/Preferences/org.lyx.lyx.plist",
    "~/Library/Saved Application State/org.lyx.lyx.savedState",
  ]
end
