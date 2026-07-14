# typed: false
# frozen_string_literal: true

class OcmAT0460 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.46.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.46.0/ocm-0.46.0-darwin-amd64.tar.gz"
      sha256 "9ce5157434b2e506725bdb035e353f8b89c395e9a2baa9248f1aad88c45e6a12"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.46.0/ocm-0.46.0-darwin-arm64.tar.gz"
      sha256 "74ffee8f44bc9772b095bb3076ffa96b250ed4144b3c1401ad2062660807041e"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.46.0/ocm-0.46.0-linux-amd64.tar.gz"
        sha256 "0c9b54dcb7f523448261a22f42fac859ca4f0c0192246857fd9d8416f0ec09ac"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.46.0/ocm-0.46.0-linux-arm64.tar.gz"
        sha256 "a33c211bc560139f740bfdf416f3d371e535b511f127396678c9fe8e361acae2"

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
