class OakSync < Formula
  desc "CLI tool for syncing Oak Research production branches with preprod"
  homepage "https://github.com/Decryptu/oak-sync"
  url "https://github.com/Decryptu/oak-sync/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "024fee5b0de7a178cb66f9e5009e3fe0b48b5e3f998796779b50358e04ee6797"
  license "MIT"

  depends_on "gum"

  def install
    bin.install "oak-sync"
  end

  test do
    # Test that the script exists and is executable
    assert_path_exists bin/"oak-sync"
    assert_predicate bin/"oak-sync", :executable?

    # Test that gum dependency is available
    system "which", "gum"
  end
end
