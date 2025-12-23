# typed: false
# frozen_string_literal: true

class OcmAT0343 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.34.3"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.34.3/ocm-0.34.3-darwin-amd64.tar.gz"
      sha256 "c038cc19eb986c1a3b0a10c34332e8d81e77a9b4f34bcf91d0082ebbca854587"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.34.3/ocm-0.34.3-darwin-arm64.tar.gz"
      sha256 "0b07e4cb29e42ba240b5dbdc9e090fab7153269153470eaba483716f4392c378"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.34.3/ocm-0.34.3-linux-amd64.tar.gz"
        sha256 "3d5e400732020216d37892ab483102afbcdda212f2e8aa306c01b8c08269f277"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.34.3/ocm-0.34.3-linux-arm64.tar.gz"
        sha256 "6af38e97f288491b1bdf540f98bedae544bad1bfc65248ecdde9d8f0ccc674d2"

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
