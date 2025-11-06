class Bctool < Formula
  desc "Blockchain info tool"
  homepage "https://github.com/mselser95/bctool"
  version "0.0.18"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.18/bctool_linux_amd64"
      sha256 "3c12fe1b4f2c22ab9bfd643700e8ff8d8a55c5a056f75d86507742bdf263bd9c"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mselser95/bctool/releases/download/v0.0.18/bctool_linux_arm64"
      sha256 "4cc9b88ffb912beea15ffe52a1356ee06262d33834d6b568930684e31f4aaebf"
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
