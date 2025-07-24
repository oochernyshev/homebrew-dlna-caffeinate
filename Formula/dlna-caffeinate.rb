class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/dlna-caffeinate"
  url "https://github.com/oochernyshev/dlna-caffeinate/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "PUT_REAL_SHA256_HERE"
  version "1.0.0"

  def install
    bin.install "dlna-caffeinate"
  end

  test do
    system "#{bin}/dlna-caffeinate", "status"
  end
end
