class Torresmo < Formula
  desc "Dead simple and minimal TUI client for the Transmission daemon"
  homepage "https://sr.ht/~paemuri/torresmo"
  url "https://static.crates.io/crates/torresmo/torresmo-1.0.5.crate"
  sha256 "ca9bcef02b72346ae3af1a8a8337236ddfe65b9cd301e4462c9f965f49c08acd"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "torresmo #{version}", shell_output("#{bin}/torresmo --version")
  end
end
