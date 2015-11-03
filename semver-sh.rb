class SemverSh < Formula
  desc 'Semver.sh'
  homepage 'https://github.com/tomologic/utilities'
  version '0.1.1'
  sha256 'b8d181ff92b0e07cf0a149f6ace8556c89de0f58f563a791adaeb0ae28a2ee74'
  url 'https://raw.githubusercontent.com/tomologic/utilities/00773c99e4a75cb8f2f98ee895b1b522317b7cd6/semver.sh'

  def install
    bin.install 'semver.sh'
  end
end
