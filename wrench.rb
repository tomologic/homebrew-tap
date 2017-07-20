class Wrench < Formula
  desc 'Wrench build / test util'
  homepage 'https://github.com/tomologic/wrench'
  version '0.42.0'

  if OS.mac?
    os = 'darwin'
    sha256 '3fa07c5279ab368b16c276ed563cc36c36434d8afd934fcb8e6e07999243ece0'
  elsif OS.linux?
    os = 'linux'
    sha256 '23039069f23e0e528d6a3cb297799848b1b34b8739ca201b2c6aa481233915cb'
  end

  url "https://github.com/tomologic/wrench/releases/download/v#{version}/wrench-#{version}-#{os}-amd64"

  def install
    mv Dir.glob("wrench-*-amd64").first, 'wrench'
    bin.install 'wrench'
  end
end
