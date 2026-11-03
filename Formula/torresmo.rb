class Torresmo < Formula
  desc "Dead-simple and minimal TUI client for the Transmission daemon"
  homepage "https://sr.ht/~paemuri/torresmo"
  url "https://static.crates.io/crates/torresmo/torresmo-2.0.0.crate"
  sha256 "ab2412088aa30263b83054c5ce50e26b3f5f78f7a1c0c4d4a6657acc8dc9677c"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "torresmo #{version}", shell_output("#{bin}/torresmo --version")
  end
end
