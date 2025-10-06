# typed: false
# frozen_string_literal: true

class OcmAT0310 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.31.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.31.0/ocm-0.31.0-darwin-amd64.tar.gz"
      sha256 "b649b1993e85e774aea55e1000ce93eeec6871cc1f1ec7d3df49f802fe6e1fac"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.31.0/ocm-0.31.0-darwin-arm64.tar.gz"
      sha256 "26b0114a57b59c0a42dbc5eff8492129a1b782e5fb34bd9d20a56d96c54e7dc8"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.31.0/ocm-0.31.0-linux-amd64.tar.gz"
        sha256 "f50f10fc75f5349e7c92b60c357f94b01e618e587021539cb68919103311b5cc"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.31.0/ocm-0.31.0-linux-arm64.tar.gz"
        sha256 "57fcaad68cfaf33337617ade2ba30ac6e1e8ab712872dc088df0cbaf422d4262"

        def install
          bin.install "ocm"
        end
      end
    end
  end

  test do
    system "#{bin}/ocm --version"
  end
end
