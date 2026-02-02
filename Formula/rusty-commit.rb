class RustyCommit < Formula
  desc "Rust-powered AI commit message generator with 18+ AI providers"
  homepage "https://github.com/hongkongkiwi/rusty-commit"
  license "MIT"
  version "1.0.25"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.25/rusty-commit-v1.0.25-aarch64-apple-darwin.tar.gz"
      sha256 "5bc45f58f9d6a80b3b23855185e130f1b45d99d0bd9a4ab93495c206aaa7f070"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.25/rusty-commit-v1.0.25-x86_64-apple-darwin.tar.gz"
      sha256 "623f83c9dad9d6a2bed6d3439fea6c166dee62f44aa9cdb845d48729ed1983d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.25/rusty-commit-v1.0.25-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e169ae8bb2a07bb7b9b09b727d9bae4d7670d7881a6ba9d5dd3152013e3356b"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/rusty-commit/releases/download/v1.0.25/rusty-commit-v1.0.25-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8ae7a568cca7fc921b359bf512a099ad248341551369ebae203f4aa8fedd9c0"
    end
  end

  def install
    bin.install "rco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rco --version").strip
  end
end
