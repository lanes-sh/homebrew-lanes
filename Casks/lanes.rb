cask "lanes" do
  version "0.45.0"
  sha256 "d9798ab4a40bfa6369ae2e7c0ebc66b39e4554121570cc4f9ae3dafadc5e097e"

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
