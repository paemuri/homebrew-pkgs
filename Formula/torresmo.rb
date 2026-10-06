class Torresmo < Formula
  desc "Dead simple and minimal TUI client for the Transmission daemon"
  homepage "https://sr.ht/~paemuri/torresmo"
  url "https://git.sr.ht/~paemuri/torresmo/archive/v1.0.2.tar.gz"
  sha256 "dbd40767ba1f2a14a76e465ed351d28e6ef12ec1496e723628f90ebc79997de9"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "torresmo #{version}", shell_output("#{bin}/torresmo --version")
  end
end
