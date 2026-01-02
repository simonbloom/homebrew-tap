cask "progress11" do
  version "1.0.3"
  sha256 :no_check

  url "https://github.com/simonbloom/gittool-releases/releases/download/v#{version}/Progress11.dmg"
  name "Progress11"
  desc "Native macOS Git client with AI-powered commit messages"
  homepage "https://github.com/simonbloom/gittool-releases"

  app "Progress11.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Progress11.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.progress11.app.plist",
    "~/Library/Application Support/Progress11",
  ]
end
