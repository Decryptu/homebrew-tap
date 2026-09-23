class Zigdex < Formula
  desc "Display Pokemon sprites in your terminal, powered by Zig"
  homepage "https://github.com/Decryptu/zigdex"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/Decryptu/zigdex/releases/download/v0.3.0/zigdex-v0.3.0-aarch64-macos.tar.gz"
    sha256 "c6a1d43de4cf6920d43f9ef1c134186aeeee2e1e322c1360b691a31beb47f050"
  else
    url "https://github.com/Decryptu/zigdex/releases/download/v0.3.0/zigdex-v0.3.0-x86_64-macos.tar.gz"
    sha256 "cd7d24d9ffed621807e0a7bc896e46dd1b89cf52d62d3ad911f61ea4892c7b39"
  end

  def install
    bin.install "zigdex"
  end

  test do
    assert_match "Usage: zigdex", shell_output("#{bin/"zigdex"} --help")
    assert_match "Pikachu", shell_output("#{bin/"zigdex"} pikachu")
  end
end
