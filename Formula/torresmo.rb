class Torresmo < Formula
  desc "Dead simple and minimal TUI client for the Transmission daemon"
  homepage "https://sr.ht/~paemuri/torresmo"
  url "https://static.crates.io/crates/torresmo/torresmo-1.0.7.crate"
  sha256 "c77ba5cd9218ff8e783646dcc34a6dde94d9e319708da4bcde78f871c6265252"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "torresmo #{version}", shell_output("#{bin}/torresmo --version")
  end
end
