# typed: false
# frozen_string_literal: true

class OcmAT0510 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.51.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.51.0/ocm-0.51.0-darwin-amd64.tar.gz"
      sha256 "7c4c34b0bab5193a0def7d6673078357f51b5412c598f77e8da8e252722865cf"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.51.0/ocm-0.51.0-darwin-arm64.tar.gz"
      sha256 "4111b78bd14d834ea22bf41dd2fdbd7e6af09a22cc12a5c64309434db536de55"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.51.0/ocm-0.51.0-linux-amd64.tar.gz"
        sha256 "19cb6de20c22de98a8c639111a405238da47cb47939759debbb53003ef32fa99"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.51.0/ocm-0.51.0-linux-arm64.tar.gz"
        sha256 "5f63ba635e91e08451b9aa2474fe6e2f739516015a5b6b43775935f689d25fec"

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
