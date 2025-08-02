class DlnaCaffeinate < Formula
  desc "Keep Mac awake only while MiniDLNA is running"
  homepage "https://github.com/oochernyshev/homebrew-dlna-caffeinate"
  url "https://github.com/oochernyshev/homebrew-dlna-caffeinate/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "927095cb04e252aa15147c8421b3930fed457c5ede706cb584f0140c3480b34b"
  version "1.0.7"

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

