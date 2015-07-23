class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.11.0/wrench-v0.11.0-darwin-amd64"
  version "0.11.0"
  sha256 "d2d37262f2134d33fc4c699f9238d64a2eb8d22b74bace3c31987d1cf212adf8"

  def install
    bin.install "wrench-v0.11.0-darwin-amd64"
    mv bin/'wrench-v0.11.0-darwin-amd64', bin/'wrench'
  end
end
