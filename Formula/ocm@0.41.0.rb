# typed: false
# frozen_string_literal: true

class OcmAT0410 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.41.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.41.0/ocm-0.41.0-darwin-amd64.tar.gz"
      sha256 "00668b4d8bac636890746a1caf4e180730c80bf09f9ac76ea072dfa9aa10e19c"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.41.0/ocm-0.41.0-darwin-arm64.tar.gz"
      sha256 "c6a92117b1d58619aa313ad7365a552a1089cad257e5eb140cb33fe289f2b3c7"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.41.0/ocm-0.41.0-linux-amd64.tar.gz"
        sha256 "b4c21802a5451bac294ec5d06e8e07b8e56d89cba641e46b69985631553ed96f"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.41.0/ocm-0.41.0-linux-arm64.tar.gz"
        sha256 "4e76d1ec6c0ba4bfe41567a5dc1a6ea174bf45fa78d3f2082490029f879de078"

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
