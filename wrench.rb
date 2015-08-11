class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.17.0/wrench-v0.17.0-darwin-amd64"
  version "0.17.0"
  sha256 "fa89a2914ad6ed6ea184fb460db4a5a1a0a8973326675e9d3b8b694c4acdf83c"

  def install
    bin.install "wrench-v0.17.0-darwin-amd64"
    mv bin/'wrench-v0.17.0-darwin-amd64', bin/'wrench'
  end
end
