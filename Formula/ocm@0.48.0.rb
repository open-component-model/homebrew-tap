# typed: false
# frozen_string_literal: true

class OcmAT0480 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.48.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.48.0/ocm-0.48.0-darwin-amd64.tar.gz"
      sha256 "bc57ec42a60e61b79052489b39da9473c6fa7eff6e330d35e1df065b9254d31e"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.48.0/ocm-0.48.0-darwin-arm64.tar.gz"
      sha256 "98d709674592f89becbbb60a15e725a1162345fb9adaea1972ac9659e93b1131"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.48.0/ocm-0.48.0-linux-amd64.tar.gz"
        sha256 "2963858ac43dfac3d34f6c7b0a26a9927e44d33b0797a88e823529c17ee17300"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.48.0/ocm-0.48.0-linux-arm64.tar.gz"
        sha256 "9bf4460c76babcb0caf90cbc82fbaa579ece3ca05b587736fda3a4f09dce830b"

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
