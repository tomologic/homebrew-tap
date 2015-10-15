class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.27.0/wrench-v0.27.0-darwin-amd64"
  version "0.27.0"
  sha256 "ace1e5ef83f74eda3126187a306017c9e6bb80ed9499dbf7dd8765c597ae5878"

  def install
    bin.install "wrench-v0.27.0-darwin-amd64"
    mv bin/'wrench-v0.27.0-darwin-amd64', bin/'wrench'
  end
end
