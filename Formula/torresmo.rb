class Torresmo < Formula
  desc "Dead simple and minimal TUI client for the Transmission daemon"
  homepage "https://sr.ht/~paemuri/torresmo"
  url "https://git.sr.ht/~paemuri/torresmo/archive/v1.0.3.tar.gz"
  sha256 "740d677a1eb0677f9c71033305b7e43b1725fe9ba08fdce44d6fc83287c7d73d"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "torresmo #{version}", shell_output("#{bin}/torresmo --version")
  end
end
