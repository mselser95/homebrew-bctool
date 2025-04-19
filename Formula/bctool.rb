class Bctool < Formula
  desc "Blockchain info tool"
  homepage "https://github.com/mselser95/bctool"
  version "0.0.15"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.15/bctool_linux_amd64"
      sha256 "f4495845962d5f9d2effc2ad228cbbced228f7bf04ae85755dce201e37ddc88b"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.15/bctool_linux_arm64"
      sha256 "a22f1abfe5eb9f1b2d80890b42e8e634a0521853766941e8d7b22d35f313cf42"
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
