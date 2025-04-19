class Bctool < Formula
  desc "Blockchain info tool"
  homepage "https://github.com/mselser95/bctool"
  version "0.0.14"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.14/bctool_linux_amd64"
      sha256 "65924e522c10026b0d78efd8fe6eda15cce50f3edbd62f690b5bc80977f37a3b"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.14/bctool_linux_arm64"
      sha256 "2bd489d9a312913e16748786a3ed618635e72b7c88d86b4ceb4afefa41af8904"
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
