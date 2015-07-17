class Wrench < Formula
  desc "Wrench build / test util"
  homepage "https://github.com/tomologic/wrench"
  url "https://github.com/tomologic/wrench/releases/download/v0.1.0/wrench-v0.1.0-darwin-386"
  version "0.1.0"
  sha256 "b95d4a730e61f8297315ffc99a5447cec68cea44e931ec549182deae811e30e4"

  def install
    bin.install "wrench-v0.1.0-darwin-386"
    mv bin/'wrench-v0.1.0-darwin-386', bin/'wrench'
  end
end
