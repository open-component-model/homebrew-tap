# typed: false
# frozen_string_literal: true

class OcmAT0250 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.25.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.25.0/ocm-0.25.0-darwin-amd64.tar.gz"
      sha256 "72449917df5298e72ffd119c42bd685256a6b927a30f1a8ead6edffc2a86f95a"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.25.0/ocm-0.25.0-darwin-arm64.tar.gz"
      sha256 "f1142c85138d92c52e4fda778c376166467edf3d2922b376c75add3058a6cfaf"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.25.0/ocm-0.25.0-linux-amd64.tar.gz"
        sha256 "884b45bd3128a4a52fa3ea817ff0b41777bce1d4ef9df8573bf6244ee162aa96"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.25.0/ocm-0.25.0-linux-arm64.tar.gz"
        sha256 "05c2d0c60eb597cf91a77e6587e1c3bd5e6f7d9a3d772c352aa8058038251f5a"

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
