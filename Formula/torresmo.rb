class Torresmo < Formula
  desc "Dead-simple and minimal TUI client for the Transmission daemon"
  homepage "https://sr.ht/~paemuri/torresmo"
  url "https://static.crates.io/crates/torresmo/torresmo-1.0.9.crate"
  sha256 "efce79c019a90a2a49b1f7bb1f9722a72a6b694411aa4e066be5b1c78a34519a"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "torresmo #{version}", shell_output("#{bin}/torresmo --version")
  end
end
