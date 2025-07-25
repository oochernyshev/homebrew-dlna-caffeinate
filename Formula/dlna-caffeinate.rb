class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/dlna-caffeinate"
  url "https://github.com/oochernyshev/dlna-caffeinate/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "34075065c60cdadd89751f511a1fa7607ef5bf0a86a77e2481a4478a203f715f"
  version "1.0.2"

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

