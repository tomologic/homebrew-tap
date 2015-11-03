class Wrench < Formula
  desc 'Wrench build / test util'
  homepage 'https://github.com/tomologic/wrench'
  version '0.37.0'

  if OS.mac?
    os = 'darwin'
    sha256 '213103dd47b82c9cd4483331da7ac73d91522583b3f3aedd7c42c22004d14973'
  elsif OS.linux?
    os = 'linux'
    sha256 '53e21d7c16fddbfeb7a01ccfe099c8db0c98b3bd6cd8d7a74dce68c8fbb63102'
  end

  url "https://github.com/tomologic/wrench/releases/download/v#{version}/wrench-#{version}-#{os}-amd64"

  def install
    mv Dir.glob("wrench-*-amd64").first, 'wrench'
    bin.install 'wrench'
  end
end
