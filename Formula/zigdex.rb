class Zigdex < Formula
  desc "Display Pokemon sprites in your terminal, powered by Zig"
  homepage "https://github.com/Decryptu/zigdex"
  version "0.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/Decryptu/zigdex/releases/download/v0.2.0/zigdex-v0.2.0-aarch64-macos.tar.gz"
    sha256 "57900d9bb5ed7c70135315631d0df30de3d68868b13d83ba52245c8dc5c1e9c2"
  else
    url "https://github.com/Decryptu/zigdex/releases/download/v0.2.0/zigdex-v0.2.0-x86_64-macos.tar.gz"
    sha256 "d12e686c70b663395b5f5de58b7398f77e7531839782501a004f7252061bb304"
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