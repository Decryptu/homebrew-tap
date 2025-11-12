class OakSync < Formula
  desc "CLI tool for syncing Oak Research production branches with preprod"
  homepage "https://github.com/Decryptu/oak-sync"
  url "https://github.com/Decryptu/oak-sync/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "8e4c2bfa128480ab31da9d2ff7226a029118b4882ebe956b3b29762157c48c3c"
  license "MIT"

  depends_on "gum"

  def install
    bin.install "oak-sync"
  end

  test do
    # Test that the script exists and is executable
    assert_predicate bin/"oak-sync", :exist?
    assert_predicate bin/"oak-sync", :executable?

    # Test that gum dependency is available
    system "which", "gum"
  end
end
