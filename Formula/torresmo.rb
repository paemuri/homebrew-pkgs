class Torresmo < Formula
  desc "Dead-simple and minimal TUI client for the Transmission daemon"
  homepage "https://sr.ht/~paemuri/torresmo"
  url "https://static.crates.io/crates/torresmo/torresmo-1.0.8.crate"
  sha256 "3d6d7cab154384c820ec345e36a401e7d557385aead8e66e0b8f6418537c3400"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "torresmo #{version}", shell_output("#{bin}/torresmo --version")
  end
end
