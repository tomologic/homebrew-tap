class SemverSh < Formula
  desc 'Semver.sh'
  homepage 'https://github.com/tomologic/utils'
  version '0.1.0'
  sha256 '27154d13c0ff33052468cf6deafb4a7f32d11b953ed7388a8692bef864c8e568'
  url 'https://raw.githubusercontent.com/tomologic/utilities/5a81b6dca121a1c12990bc35d17d226b91152b9f/semver.sh'

  def install
    bin.install "semver.sh"
  end
end
