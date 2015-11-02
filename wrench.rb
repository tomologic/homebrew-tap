class Wrench < Formula
  desc 'Wrench build / test util'
  homepage 'https://github.com/tomologic/wrench'
  version '0.34.0'

  if OS.mac?
    @@os = 'darwin'
    sha256 '1c791043f85cb4121643c6c5ef8ca9d6989ba44fcdccb16cbaeff1d1f71389a1'
  elsif OS.linux?
    @@os = 'linux'
    sha256 '7642112ba1d91c07de5d888a54fe418ee080c093550c63824afab411279b1d4d'
  end

  url "https://github.com/tomologic/wrench/releases/download/v#{version}/wrench-#{version}-#{@@os}-amd64"

  def install
    bin.install "wrench-#{version}-#{@@os}-amd64"
    mv bin/"wrench-#{version}-#{@@os}-amd64", bin/'wrench'
  end
end
