class Wrench < Formula
  desc 'Wrench build / test util'
  homepage 'https://github.com/tomologic/wrench'
  version '0.40.0'

  if OS.mac?
    os = 'darwin'
    sha256 '0533881b54c204e1fe196da5267483d19c66133b8a993116350548e42683f51b'
  elsif OS.linux?
    os = 'linux'
    sha256 '620b5b3b58d708f07253f4d693853684215c2b0db3891c2575c67218cc69841f'
  end

  url "https://github.com/tomologic/wrench/releases/download/v#{version}/wrench-#{version}-#{os}-amd64"

  def install
    mv Dir.glob("wrench-*-amd64").first, 'wrench'
    bin.install 'wrench'
  end
end
