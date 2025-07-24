class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/dlna-caffeinate"
  url "https://github.com/oochernyshev/dlna-caffeinate/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "adb906e0ddca3f38d4a9715aea1fddfde20eab04955c0750a86f21bc09b643aa"
  version "1.0.1"

  def install
    bin.install "dlna-caffeinate", "dlna-caffeinate-monitor"
  end

  test do
    system "#{bin}/dlna-caffeinate", "status"
  end
end

