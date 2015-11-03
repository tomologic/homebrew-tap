class Couchlock < Formula
  desc 'Couchlock those running pipelines!'
  homepage 'https://github.com/tomologic/couchlock'
  version '0.2.0'

  if OS.mac?
    os = 'darwin'
    sha256 'b1860e86d6c21240bbf3995a3da7e31273a1af86b546f2694ac6502fd4b39407'
  elsif OS.linux?
    os = 'linux'
    sha256 '32a590053e9b5de7518a9eee92bc08aa3830590f95a6730f4d1fd57195cd2a2c'
  end

  url "https://github.com/tomologic/couchlock/releases/download/v#{version}/couchlock-#{version}-#{os}-amd64"

  def install
    mv Dir.glob("couchlock-*-amd64").first, 'couchlock'
    bin.install 'couchlock'
  end
end
