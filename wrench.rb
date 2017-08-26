class Wrench < Formula
  desc 'Wrench build and test utility'
  homepage 'https://github.com/tomologic/wrench'
  version '0.43.0'
  head 'git@github.com:tomologic/wrench.git'

  if OS.mac?
    os = 'darwin'
    sha256 '36729e9d9c4ca274d1bf00c5bab3b8e3ec9193b8f804c81b77af606280887643'
  elsif OS.linux?
    os = 'linux'
    sha256 '0787d1ddcb262a6092b84d8a626ce09b7fc72f194d8bab44330a9f12b326bc44'
  end

  url "https://github.com/tomologic/wrench/releases/download/v#{version}/wrench-#{version}-#{os}-amd64"

  def install
    mv Dir.glob("wrench-*-amd64").first, 'wrench'
    bin.install 'wrench'

    bash_completion.install "contrib/wrench-completion.bash"
  end
end
