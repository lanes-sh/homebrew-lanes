cask "lanes" do
  version "0.32.3"
  sha256 "6a685fb52e20984e372ef9107179ceeea18ae1c0573b3baa1402ef8d0a12c44f"

  url "https://github.com/lanes-sh/app/releases/download/latest/lanes-universal.tar.gz"
  name "Lanes"
  desc "Mission control for AI coding agents"
  homepage "https://github.com/lanes-sh/app"

  depends_on macos: ">= :ventura"

  app "Lanes.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Lanes.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.lanes.app",
    "~/Library/Caches/com.lanes.app",
    "~/Library/Preferences/com.lanes.app.plist",
  ]
end
