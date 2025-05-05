# typed: false
# frozen_string_literal: true

class OcmAT0240 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.24.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.24.0/ocm-0.24.0-darwin-amd64.tar.gz"
      sha256 "30e53ec23c75fb2fec4a5f17be95307322aba92470b4c263bd8ee5b9ce15ad22"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.24.0/ocm-0.24.0-darwin-arm64.tar.gz"
      sha256 "905ee74a43b83bed048dcbbc645c189a21563d783eb98eeb1568f84f3cc81582"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.24.0/ocm-0.24.0-linux-amd64.tar.gz"
        sha256 "f8f63a158ddfe57b89510949f8758785ef16bec14c963e18c618e9a611890a48"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.24.0/ocm-0.24.0-linux-arm64.tar.gz"
        sha256 "ebe1bebb75cd1e2142a74d1417f6dc0fd693785334b8bb5179dd1786fddcf76a"

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
