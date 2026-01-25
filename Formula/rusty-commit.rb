class RustyCommit < Formula
  desc "Rust-powered AI commit message generator"
  homepage "https://github.com/hongkongkiwi/rusty-commit"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v#{version}/rusty-commit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "TODO: Update with actual sha256 hash"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v#{version}/rusty-commit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "TODO: Update with actual sha256 hash"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v#{version}/rusty-commit-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "TODO: Update with actual sha256 hash"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v#{version}/rusty-commit-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "TODO: Update with actual sha256 hash"
    end
  end

  def install
    bin.install "rusty-commit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rusty-commit --version").strip
  end
end
