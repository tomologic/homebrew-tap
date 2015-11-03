class TravisCiBumpminorSh < Formula
  desc 'travis-ci-bumpminor.sh'
  homepage 'https://github.com/tomologic/utilities'
  version '0.1.1'
  sha256 '9626d60ac5fbe390d9a623c430378fd3e81264bd07338e292093446443766774'
  url 'https://raw.githubusercontent.com/tomologic/utilities/36a28f43ef364d66007c2314dde9fa9c48deb52f/travis-ci-bumpminor.sh'
  depends_on 'tomologic/tap/semver-sh' => :recommended

  def install
    bin.install 'travis-ci-bumpminor.sh'
  end
end
