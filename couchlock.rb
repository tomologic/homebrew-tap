class Couchlock < Formula
  desc 'Couchlock those running pipelines!'
  homepage 'https://github.com/tomologic/couchlock'
  head 'git@github.com:tomologic/couchlock.git'
  version '0.9.0'

  if OS.mac?
    os = 'darwin'
    sha256 'a083dd3d0366bf0c2d628a6d12df7ae0e15523d8ce7a9bf7d67fc33943ace403'
  elsif OS.linux?
    os = 'linux'
    sha256 'bf5bb83efa192f1482d8c15442b20dfda8812df05e89dc827f8743d92d98c3fd'
  end

  url "https://github.com/tomologic/couchlock/releases/download/v#{version}/couchlock-#{version}-#{os}-amd64"

  def install
    mv Dir.glob("couchlock-*-amd64").first, 'couchlock'
    bin.install 'couchlock'
  end
end
