class RustyCommit < Formula
  desc "Rust-powered AI commit message generator with 18+ AI providers"
  homepage "https://github.com/hongkongkiwi/rusty-commit"
  license "MIT"
  version "1.0.22"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.22/rusty-commit-v1.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "4e59b1e37b2c7dd37aec36295be224f66526d42d3de5937283e7b8f6fc4b096f"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.22/rusty-commit-v1.0.22-x86_64-apple-darwin.tar.gz"
      sha256 "5430b3822cfd8136293adc66fd9861cb532e836862b28dcdfb72fdc3455208d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.22/rusty-commit-v1.0.22-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5b309b637432f574c16aba3d16277486c1d8afd7af005c2701ac80d7334f36d"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.22/rusty-commit-v1.0.22-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca927865deadd56f82f90c7d4520eec02a1d4dc7e730b83f429b882c8f144394"
    end
  end

  def install
    bin.install "rco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rco --version").strip
  end
end
