# typed: false
# frozen_string_literal: true

class OcmAT0350 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.35.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.35.0/ocm-0.35.0-darwin-amd64.tar.gz"
      sha256 "26bf546907706be345f2cd78465cacd557f7343f29048791a5af4300c964b76b"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.35.0/ocm-0.35.0-darwin-arm64.tar.gz"
      sha256 "0d6e118b0b187749d2c9ecbd9e6550cd38accfe2e98346565b07aa5fffb7f997"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.35.0/ocm-0.35.0-linux-amd64.tar.gz"
        sha256 "0d2105da920601f4d98ca809f9ee46e6a2695c491240e9b279eb3006a5e578d5"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.35.0/ocm-0.35.0-linux-arm64.tar.gz"
        sha256 "5800fa103f2fc82bfb50141d979247d149f930b21760fed907b443210315d52b"

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
