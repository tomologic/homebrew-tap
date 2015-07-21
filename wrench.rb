class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.4.0/wrench-v0.4.0-darwin-amd64"
  version "0.4.0"
  sha256 "27f11a89036b09d9bd6fb99c38250e9670cb152596eb0750a8fbeee598743007"

  def install
    bin.install "wrench-v0.4.0-darwin-amd64"
    mv bin/'wrench-v0.4.0-darwin-amd64', bin/'wrench'
  end
end
