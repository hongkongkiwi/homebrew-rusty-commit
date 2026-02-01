class RustyCommit < Formula
  desc "Rust-powered AI commit message generator with 18+ AI providers"
  homepage "https://github.com/hongkongkiwi/rusty-commit"
  license "MIT"
  version "1.0.21"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.21/rusty-commit-v1.0.21-aarch64-apple-darwin.tar.gz"
      sha256 "8b729d6757920dbd0df82be4c512ff07879898a411c20f7cab1eb99dd2e91f6a"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.21/rusty-commit-v1.0.21-x86_64-apple-darwin.tar.gz"
      sha256 "74e520150148e30362b6b216a497cc8cf05314a0c1b152d66285998f9475057c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.21/rusty-commit-v1.0.21-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c0286de7b011a073b17a3645f1128509d3e486cc6d54b7d79519aaed6a6f43c"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.21/rusty-commit-v1.0.21-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a641d598fd4fbe5388167f3fe082b62a57e6fc9c3a2e981331c27c3a8926dbd3"
    end
  end

  def install
    bin.install "rco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rco --version").strip
  end
end
