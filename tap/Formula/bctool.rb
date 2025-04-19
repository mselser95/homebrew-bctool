class Bctool < Formula
  desc "Blockchain info tool"
  homepage "https://github.com/mselser95/bctool"
  version "0.2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mselser95/bctool/releases/download/v0.2.0/bctool_linux_amd64"
      sha256 "<REPLACE_WITH_SHA_FOR_LINUX_AMD64>"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mselser95/bctool/releases/download/v0.2.0/bctool_linux_arm64"
      sha256 "<REPLACE_WITH_SHA_FOR_LINUX_ARM64>"
    end
  end

  def install
    bin.install "#{stable.url.split('/')[-1]}" => "bctool"
  end

  test do
    system "#{bin}/bctool", "--help"
  end
end
