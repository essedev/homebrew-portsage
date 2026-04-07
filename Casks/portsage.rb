cask "portsage" do
  version "0.7.1"
  sha256 "6d6714b92340d50086ff9246bbee435fe32a47cbd87ed977910d7567a77f2bd3"

  url "https://github.com/essedev/portsage/releases/download/v#{version}/Portsage_#{version}_aarch64.dmg"
  name "Portsage"
  desc "Port allocation manager for macOS - your port sage"
  homepage "https://github.com/essedev/portsage"

  app "Portsage.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Portsage.app"]
  end
end
