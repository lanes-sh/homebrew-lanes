cask "lanes" do
  version "0.33.5"
  sha256 "6e5cf7b150d3e2754fda06c4e528d8009a556514544fe7a0ae80953ac502b2d1"

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
