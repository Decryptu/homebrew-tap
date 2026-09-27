class Zigdex < Formula
  desc "Display Pokemon sprites in your terminal, powered by Zig"
  homepage "https://github.com/Decryptu/zigdex"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/Decryptu/zigdex/releases/download/v0.4.0/zigdex-v0.4.0-aarch64-macos.tar.gz"
    sha256 "5bb22ee64a32cb2cd7896bc7d86dbaa9def62bed48b95f14cc0bdaed19e73c31"
  else
    url "https://github.com/Decryptu/zigdex/releases/download/v0.4.0/zigdex-v0.4.0-x86_64-macos.tar.gz"
    sha256 "acf1440eb359f295221210095637c04e6fa077e9ae99fc336ae8227568915d50"
  end

  def install
    bin.install "zigdex"
  end

  test do
    assert_match "Usage: zigdex", shell_output("#{bin/"zigdex"} --help")
    assert_match "Pikachu", shell_output("#{bin/"zigdex"} pikachu")
  end
end
