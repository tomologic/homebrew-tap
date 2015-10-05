class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.26.0/wrench-v0.26.0-darwin-amd64"
  version "0.26.0"
  sha256 "6ea149d8ee154e8926e4f15edc6c6e711a907d29ae6cadb1be478b701292e1a4"

  def install
    bin.install "wrench-v0.26.0-darwin-amd64"
    mv bin/'wrench-v0.26.0-darwin-amd64', bin/'wrench'
  end
end
