# typed: false
# frozen_string_literal: true

class OcmAT0260 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.26.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.26.0/ocm-0.26.0-darwin-amd64.tar.gz"
      sha256 "3355539c2d30dd9333fed0af6c5cc91d50cfd7fdbbc26e92d00a11024905f0dd"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.26.0/ocm-0.26.0-darwin-arm64.tar.gz"
      sha256 "732b48fb329d07ade8ee53bb36be4a2260541053c3c45efa929621da943f3ff6"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.26.0/ocm-0.26.0-linux-amd64.tar.gz"
        sha256 "b5accb882d33e744b7150ddbe8278d3284d7dd5fb61e29e72bb20b0b4f910230"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.26.0/ocm-0.26.0-linux-arm64.tar.gz"
        sha256 "8a8f2434bbe13fbeb3c3e7c9b13e785b1ee9dfc07b1fcf438e937fa88abc6504"

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
