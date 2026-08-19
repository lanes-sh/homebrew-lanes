cask "lanes" do
  version "0.46.2"
  sha256 "aa337e477eb248f9c0f1affd0abb57610f6f8a831532609ba8b807dac5066c5f"

  url "https://github.com/lanes-sh/app/releases/download/v#{version}/lanes-universal.tar.gz"
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
