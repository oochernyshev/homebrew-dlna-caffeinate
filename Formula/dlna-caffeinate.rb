class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/dlna-caffeinate"
  url "https://github.com/oochernyshev/dlna-caffeinate/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "d15a989fa30028dc6115c3179031e5b988896dc259ceada42a71b20dd97017da"
  version "1.0.3"

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

