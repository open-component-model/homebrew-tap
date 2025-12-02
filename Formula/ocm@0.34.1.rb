# typed: false
# frozen_string_literal: true

class OcmAT0341 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.34.1"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.34.1/ocm-0.34.1-darwin-amd64.tar.gz"
      sha256 "23f72e02b2743107982a0dc650f36bfc6fd1b1e9f95c6d4a7781996ac3d2bc37"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.34.1/ocm-0.34.1-darwin-arm64.tar.gz"
      sha256 "e9d50d7d7770864ab246df3e8d7c79fd85130c1f11a6516fe3d1d4db5b4d73e3"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.34.1/ocm-0.34.1-linux-amd64.tar.gz"
        sha256 "6d563459a25680b959d775d48245327499b47f7921a182cd452b7e7d0c78511c"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.34.1/ocm-0.34.1-linux-arm64.tar.gz"
        sha256 "59fafd73d25b592c0e0690c911ec99486e8f9f5408a9301b9805a4fe83a43dc3"

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
