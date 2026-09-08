# typed: false
# frozen_string_literal: true

class OcmAT0500 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.50.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.50.0/ocm-0.50.0-darwin-amd64.tar.gz"
      sha256 "3ce07637f78792f2608f168d1afa05c5fa44bccf7b579e1d8aabf3cdc778a344"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.50.0/ocm-0.50.0-darwin-arm64.tar.gz"
      sha256 "98dda4cedd30218471c467f1ac5f7c6cb9fde9e9d2eb4fa4d0c2235283fd582d"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.50.0/ocm-0.50.0-linux-amd64.tar.gz"
        sha256 "045d3f15f2c548388485945f506a735789ecc2d0bd396631e46ceead6c55b674"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.50.0/ocm-0.50.0-linux-arm64.tar.gz"
        sha256 "6185dddd8b54454085284c6cda4dc6f4d6b5a954c0222da1384f866f5e97f2de"

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
