# typed: false
# frozen_string_literal: true

class OcmAT0291 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.29.1"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.29.1/ocm-0.29.1-darwin-amd64.tar.gz"
      sha256 "f8f8d5e30133755002f50561754d4f5633ea320345c4a33bd9de3fb92b86af03"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.29.1/ocm-0.29.1-darwin-arm64.tar.gz"
      sha256 "6c63e8ad1daeed95abb67cc03499ee19c3c998ea114413cfad36ee4a7a5d4c69"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.29.1/ocm-0.29.1-linux-amd64.tar.gz"
        sha256 "d6bc4c9e4110efda3033e3fa825bdaf4e7007304d6dedee28b1fc58977c2288a"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.29.1/ocm-0.29.1-linux-arm64.tar.gz"
        sha256 "9a8bb586bbfd75712d526352a20364d1412da21d1a8d2a59669f4fff868f3a42"

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
