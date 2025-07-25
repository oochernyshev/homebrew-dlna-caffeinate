class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/dlna-caffeinate"
  url "https://github.com/oochernyshev/dlna-caffeinate/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "a069c718d75b353eb124a6529371043e6a8c93ee84570274226e7d3fb0096ecd"
  version "1.0.5"

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

