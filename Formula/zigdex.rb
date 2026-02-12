class Zigdex < Formula
  desc "Display Pokemon sprites in your terminal, powered by Zig"
  homepage "https://github.com/Decryptu/zigdex"
  version "0.2.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/Decryptu/zigdex/releases/download/v0.2.2/zigdex-v0.2.2-aarch64-macos.tar.gz"
    sha256 "ad21165bd9a769b456d1fd0468aaede49ab5835db90f0962dcd698dbe254953d"
  else
    url "https://github.com/Decryptu/zigdex/releases/download/v0.2.2/zigdex-v0.2.2-x86_64-macos.tar.gz"
    sha256 "98e8593df31599a8b6f98ef9fd666ded29392aedc25b12b2c739a74a7e3a2d41"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "zigdex-aarch64-macos" => "zigdex"
    else
      bin.install "zigdex-x86_64-macos" => "zigdex"
    end
  end

  test do
    assert_match "zigdex", shell_output("#{bin}/zigdex --help")
  end
end