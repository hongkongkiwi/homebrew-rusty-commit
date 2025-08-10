class RustyCommit < Formula
  desc "Rust-powered AI commit message generator - Write impressive commits in seconds"
  homepage "https://github.com/hongkongkiwi/rusty-commit"
  url "https://github.com/hongkongkiwi/rusty-commit/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "bfb808ff486279b6ad5ba72b68228d5247683ab8a6fba5a38293c616219fcb20"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Test that the binary runs
    system "#{bin}/rco", "--version"
  end
end