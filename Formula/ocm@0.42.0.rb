# typed: false
# frozen_string_literal: true

class OcmAT0420 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.42.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.42.0/ocm-0.42.0-darwin-amd64.tar.gz"
      sha256 "7f394c77298d7a1833485390ff7cb2d190ede80aceb9369e70da1df979913db2"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.42.0/ocm-0.42.0-darwin-arm64.tar.gz"
      sha256 "5ebf397d811837ce13aafef00d6dc6e69e90b13dee40ba2e8df7b4735be14346"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.42.0/ocm-0.42.0-linux-amd64.tar.gz"
        sha256 "e7f27b8036344a2d20e0ff011df31169945e172f16577bac4204d3d1ed4a979d"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.42.0/ocm-0.42.0-linux-arm64.tar.gz"
        sha256 "ce3cba880813584f3e968bd762bab09f2eacd82513df6100962cf1afdea9f65e"

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
