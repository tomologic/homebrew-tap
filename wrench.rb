class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.24.0/wrench-v0.24.0-darwin-amd64"
  version "0.24.0"
  sha256 "017260188dfcf896cf021427d4e583a0630214155e047b1ce977864cc4cd096d"

  def install
    bin.install "wrench-v0.24.0-darwin-amd64"
    mv bin/'wrench-v0.24.0-darwin-amd64', bin/'wrench'
  end
end
