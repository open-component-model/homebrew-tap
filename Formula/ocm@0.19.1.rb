# typed: false
# frozen_string_literal: true

class OcmAT0191 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.19.1"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.19.1/ocm-0.19.1-darwin-amd64.tar.gz"
      sha256 "78e83e677c778cde61bf7df3a5f472a24bf4c2ad8e4511ee5091dc714198448d"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.19.1/ocm-0.19.1-darwin-arm64.tar.gz"
      sha256 "02646ddd77bfec3ede4297c7bb90c63a8807f7db72677726246d08cd10ea7502"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.19.1/ocm-0.19.1-linux-amd64.tar.gz"
        sha256 "eccc11c99ce9d95390aa0148973b61d09180fbed8acbc92c949ab9f6ea230402"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.19.1/ocm-0.19.1-linux-arm64.tar.gz"
        sha256 "9cf50a843d9c46bb16b59d54d3cccef8a03db78e7d0f97652e73b348767976b5"

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
