class Zigdex < Formula
  desc "Display Pokemon sprites in your terminal, powered by Zig"
  homepage "https://github.com/Decryptu/zigdex"
  version "0.2.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/Decryptu/zigdex/releases/download/v0.2.1/zigdex-v0.2.1-aarch64-macos.tar.gz"
    sha256 "46037ddd4ba599d0486a96483e8cb322dc6560131c545aba6fd7736fe0adeaa8"
  else
    url "https://github.com/Decryptu/zigdex/releases/download/v0.2.1/zigdex-v0.2.1-x86_64-macos.tar.gz"
    sha256 "359143f25f957265e0088125653cc1e7e3733b943c1825dd1b2af760c2f8be7e"
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