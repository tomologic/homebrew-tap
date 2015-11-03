class TravisCiBumpminorSh < Formula
  desc 'travis-ci-bumpminor.sh'
  homepage 'https://github.com/tomologic/utilities'

  version '0.1.2'
  sha256 'eaa648684c3769c117723918ddd52b6de477d53d35c104e68f17df7cf3c1a807'
  url 'https://raw.githubusercontent.com/tomologic/utilities/5e48708acb5ca6c98edad246ae9774c289a35835/travis-ci-bumpminor.sh'

  depends_on 'tomologic/tap/semver-sh' => :recommended

  def install
    bin.install 'travis-ci-bumpminor.sh'
  end
end
