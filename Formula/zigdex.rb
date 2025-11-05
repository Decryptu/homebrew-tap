class Zigdex < Formula
  desc "Display Pokemon sprites in your terminal, powered by Zig"
  homepage "https://github.com/Decryptu/zigdex"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/Decryptu/zigdex/releases/download/v0.1.0/zigdex-v0.1.0-aarch64-macos.tar.gz"
    sha256 "84697dfbaea8226bf348a9a54bd66856ede4ff6a9693d6be38297d167e3ca10e"
  else
    url "https://github.com/Decryptu/zigdex/releases/download/v0.1.0/zigdex-v0.1.0-x86_64-macos.tar.gz"
    sha256 "ace380a586b255a4e2f38539f453cd062ad0fa79d03eb9ff9694c86382f49877"
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