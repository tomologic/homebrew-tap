class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.16.0/wrench-v0.16.0-darwin-amd64"
  version "0.16.0"
  sha256 "0b973a7d4e8d830035fdd51de493b1dc2014263d06b14990be5c2de9934124d2"

  def install
    bin.install "wrench-v0.16.0-darwin-amd64"
    mv bin/'wrench-v0.16.0-darwin-amd64', bin/'wrench'
  end
end
