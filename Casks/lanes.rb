cask "lanes" do
  version "0.39.0"
  sha256 "83cf60125a0f845fe7f174c867a5a8b9d270a71bd28dfe726af11f766da5169a"

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
