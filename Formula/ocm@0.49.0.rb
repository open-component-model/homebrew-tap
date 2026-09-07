# typed: false
# frozen_string_literal: true

class OcmAT0490 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.49.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.49.0/ocm-0.49.0-darwin-amd64.tar.gz"
      sha256 "73773a580cd8af59925d6cfd0f60350e6e500a8dfbe380c1b0f0474e76122b44"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.49.0/ocm-0.49.0-darwin-arm64.tar.gz"
      sha256 "289acb1709924313cd8ae2e72a96fb3b68536a90e4d78572a4443c49d45452a7"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.49.0/ocm-0.49.0-linux-amd64.tar.gz"
        sha256 "57475f64e1f5f68c157e000238c5b3e4386cbf4fe219cfb89e0ed92ba7ce0854"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.49.0/ocm-0.49.0-linux-arm64.tar.gz"
        sha256 "d3a4a453b79e533a1fbba7d6bf814d5ae5acbf95627cee6d5efa26e16d1a8abe"

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
