# typed: false
# frozen_string_literal: true

class OcmAT0221 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.22.1"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.22.1/ocm-0.22.1-darwin-amd64.tar.gz"
      sha256 "20e0f93e348870961a769095af1f9d94c11bf6e3775ad0f5e875ad60ef24ba4e"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.22.1/ocm-0.22.1-darwin-arm64.tar.gz"
      sha256 "b3d7cc0331fb2be9ea905a74d29ca0ba29bd7b1057e292d1e61d16e5fd8ac9a0"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.22.1/ocm-0.22.1-linux-amd64.tar.gz"
        sha256 "56469e1906bd1c1ed39933672b391b768a8717e6454ecd4defc1d2cd416b2bec"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.22.1/ocm-0.22.1-linux-arm64.tar.gz"
        sha256 "dbb4c2d7f7aa6ce6972b1dca14d19bdefe7fa23d58e4931901a307d5be4288d8"

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
