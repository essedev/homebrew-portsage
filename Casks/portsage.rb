cask "portsage" do
  version "0.7.2"
  sha256 "c6c958fc0169beb0a70fa9dd6dd3bdafbd741c8d63b57a483b12adab6611493c"

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
