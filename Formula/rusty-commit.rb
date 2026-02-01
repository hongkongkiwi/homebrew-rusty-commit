class RustyCommit < Formula
  desc "Rust-powered AI commit message generator with 18+ AI providers"
  homepage "https://github.com/hongkongkiwi/rusty-commit"
  license "MIT"
  version "1.0.24"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.24/rusty-commit-v1.0.24-aarch64-apple-darwin.tar.gz"
      sha256 "e82493d6cd8cf67dd967a7bffa92ab2daf5dfe95dc7c8969e7fcfe81bc60ea78"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.24/rusty-commit-v1.0.24-x86_64-apple-darwin.tar.gz"
      sha256 "462287e8a242d2794b20dad0ed93c1ac8daaa645a2ab1248968c3963267aed65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.24/rusty-commit-v1.0.24-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca540d58e2e6b7facb2ff3b653afc1a9a0d64bcfddbda74b8513832192abe7fd"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.24/rusty-commit-v1.0.24-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59906e0186cd90edaf38d9fe3b533175b8dfd9ffd6dc756e8aefd7d3ad159406"
    end
  end

  def install
    bin.install "rco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rco --version").strip
  end
end
