# typed: false
# frozen_string_literal: true

class OcmAT0380 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.38.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.38.0/ocm-0.38.0-darwin-amd64.tar.gz"
      sha256 "69395416ee0648fefa26f43f2f6480c37411c132e00b731b3d0a8bd546184f43"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.38.0/ocm-0.38.0-darwin-arm64.tar.gz"
      sha256 "6838e98692a6535739d4111de916a7f5511197126b76387c3b267ecc74ef6e7a"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.38.0/ocm-0.38.0-linux-amd64.tar.gz"
        sha256 "ddbe4d11c3efb1a7589914300859e08b824fdd1b92c99f1326055e7f869b79b3"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.38.0/ocm-0.38.0-linux-arm64.tar.gz"
        sha256 "feb8aef1736335f42f632873044b611e7d8a26813e949c133d78cbf0f871ef1e"

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
