class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.8.0/wrench-v0.8.0-darwin-amd64"
  version "0.8.0"
  sha256 "de38546f791e5351199d895a0c8cf03e096fe0abf92aeaffd126a40010f91a47"

  def install
    bin.install "wrench-v0.8.0-darwin-amd64"
    mv bin/'wrench-v0.8.0-darwin-amd64', bin/'wrench'
  end
end
