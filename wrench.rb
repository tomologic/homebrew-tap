class Wrench < Formula
  desc 'Wrench build / test util'
  homepage 'https://github.com/tomologic/wrench'
  version '0.38.0'

  if OS.mac?
    os = 'darwin'
    sha256 'a6c379be3cc4d17f40c06708496e5378477bc3d9b671211e51fa631dc17163c8'
  elsif OS.linux?
    os = 'linux'
    sha256 '78e5b09a247554baf245eb723672b016efd9346f3ce5e329564d408634a2dbf6'
  end

  url "https://github.com/tomologic/wrench/releases/download/v#{version}/wrench-#{version}-#{os}-amd64"

  def install
    mv Dir.glob("wrench-*-amd64").first, 'wrench'
    bin.install 'wrench'
  end
end
