class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/homebrew-dlna-caffeinate"
  url "https://github.com/oochernyshev/homebrew-dlna-caffeinate/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "b3eb4480a5f5d31e041944357ed74a598648c0025838ba9fff473884eed8eb9a"
  version "1.0.6"

  def install
    bin.install "dlna-caffeinate"
  end

  service do
    run [opt_bin/"dlna-caffeinate"]
    keep_alive true
    log_path var/"log/dlna-caffeinate.log"
    error_log_path var/"log/dlna-caffeinate.log"
  end
  
  test do
    system "#{bin}/dlna-caffeinate", "status"
  end
end

