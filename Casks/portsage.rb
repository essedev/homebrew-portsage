cask "portsage" do
  version "0.14.0"
  sha256 "21b80c52588eff1b49a0bfc36154f7b7359a0fe89d0137a1a789711f21e10f30"

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
