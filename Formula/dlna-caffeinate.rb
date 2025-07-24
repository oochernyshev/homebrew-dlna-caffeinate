class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/dlna-caffeinate"
  url "https://github.com/oochernyshev/dlna-caffeinate/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0e1c5c96c517c823d6815d56ae4e824d028f686245c1cabdbd0d8bddc1103c40"
  version "1.0.0"

  def install
    bin.install "dlna-caffeinate"
  end

  test do
    system "#{bin}/dlna-caffeinate", "status"
  end
end
