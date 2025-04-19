class Bctool < Formula
  desc "Blockchain info tool"
  homepage "https://github.com/mselser95/bctool"
  version "0.0.16"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.16/bctool_linux_amd64"
      sha256 "e892d5d39bf3c1d1537b21984bb03c1683232d913ac3f417085a0f21e64fa981"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.16/bctool_linux_arm64"
      sha256 "0ca425e3657649ee0ddadf8c1f41d21690c0c29a581d41adbb5d905b71281f30"
    end
  end

  def install
    if OS.linux?
      if Hardware::CPU.intel?
        bin.install "bctool_linux_amd64" => "bctool"
      elsif Hardware::CPU.arm?
        bin.install "bctool_linux_arm64" => "bctool"
      end
    end
  end

  test do
    system "\#{bin}/bctool", "--help"
  end
end
