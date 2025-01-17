cask "digikam" do
  version "7.1.0"
  sha256 "bea457513afb0e08b6d1fa0b9abd67c47d34fa2d141377f361c09176e7ae3b94"

  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg",
      verified: "kde.org/stable/digikam/"
  appcast "https://download.kde.org/stable/digikam/"
  name "digiKam"
  homepage "https://www.digikam.org/"

  pkg "digiKam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: "org.freedesktop.digikam",
            delete:  [
              "/Applications/digikam.app",
              "/Applications/showfoto.app",
            ]

  zap trash: [
    "~/Library/Application Support/digikam",
    "~/Library/Caches/digikam",
    "~/Library/Preferences/digikam.plist",
    "~/Library/Preferences/digikamrc",
    "~/Library/Saved Application State/digikam.savedState",
  ]
end
