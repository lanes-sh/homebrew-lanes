cask "lanes" do
  version "0.36.10"
  sha256 "ed92c46081ad33c1e1efcf0163be12a7213a7620fe417185620495b3a1b5773a"

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
