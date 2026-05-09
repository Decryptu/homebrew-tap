class OakSync < Formula
  desc "CLI tool for syncing Oak Research production branches with preprod"
  homepage "https://github.com/Decryptu/oak-sync"
  url "https://github.com/Decryptu/oak-sync/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "770aef21fb8ffe78ebb592d83801a2c65cf5c3492f7af4d6357f2ec41c44266f"
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
