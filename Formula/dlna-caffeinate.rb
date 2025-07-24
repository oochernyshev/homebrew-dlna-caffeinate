class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/dlna-caffeinate"
  url "https://github.com/oochernyshev/dlna-caffeinate/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "09d34ae6b7cd5dc8c988dec529ca70c965b3a9a0526cec8a4600a9f88593c8c5"
  version "1.0.0"

  def install
    bin.install "dlna-caffeinate"
  end

  test do
    system "#{bin}/dlna-caffeinate", "status"
  end
end
