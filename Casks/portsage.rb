cask "portsage" do
  version "0.14.3"
  sha256 "87cf8b7cd0f563d93b50baccabcd711882eb8a9462b28aab932529066c879934"

  url "https://github.com/essedev/portsage/releases/download/v#{version}/Portsage_#{version}_aarch64.dmg"
  name "Portsage"
  desc "Port allocation manager for macOS - ports under control"
  homepage "https://github.com/essedev/portsage"

  app "Portsage.app"
  binary "#{appdir}/Portsage.app/Contents/MacOS/portsage-cli", target: "portsage"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Portsage.app"]
  end
end
