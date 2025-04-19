class Bctool < Formula
  desc "Blockchain info tool"
  homepage "https://github.com/mselser95/bctool"
  version "0.0.13"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.13/bctool_linux_amd64"
      sha256 "86691d0dd8bc2301cc306133548fcce66840a4b5f31b0d9c0585c5a314d656f9"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.13/bctool_linux_arm64"
      sha256 "295ee35fe07276364dde2d502f0d97b900e7156a5ddc8de962597573c4595a82"
    end
  end

  def install
    bin.install "\#{stable.url.split('/')[-1]}" => "bctool"
  end

  test do
    system "\#{bin}/bctool", "--help"
  end
end
