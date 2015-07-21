class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.7.0/wrench-v0.7.0-darwin-amd64"
  version "0.7.0"
  sha256 "07f433d153543fe347799acb63151e7dc159e5b997113eff5dcbf701f92bde49"

  def install
    bin.install "wrench-v0.7.0-darwin-amd64"
    mv bin/'wrench-v0.7.0-darwin-amd64', bin/'wrench'
  end
end
