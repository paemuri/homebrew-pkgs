class Torresmo < Formula
  desc "Dead simple and minimal TUI client for the Transmission daemon"
  homepage "https://sr.ht/~paemuri/torresmo"
  url "https://static.crates.io/crates/torresmo/torresmo-1.0.6.crate"
  sha256 "d4754c57b70228bb5af7079b975646c5151ac0dc4c7e56f2f286302f8991a9aa"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "torresmo #{version}", shell_output("#{bin}/torresmo --version")
  end
end
