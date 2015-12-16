class Couchlock < Formula
  desc 'Couchlock those running pipelines!'
  homepage 'https://github.com/tomologic/couchlock'
  version '0.7.0'

  if OS.mac?
    os = 'darwin'
    sha256 'a54151ae436c48a13a615344fef32b8f23c759bdc4ae638783427e4821bb991a'
  elsif OS.linux?
    os = 'linux'
    sha256 '08c9f8fd9c0e8fa35caad6cb3ba528961f4c6840c72a2c6405d370ea96569400'
  end

  url "https://github.com/tomologic/couchlock/releases/download/v#{version}/couchlock-#{version}-#{os}-amd64"

  def install
    mv Dir.glob("couchlock-*-amd64").first, 'couchlock'
    bin.install 'couchlock'
  end
end
