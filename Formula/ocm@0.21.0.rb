# typed: false
# frozen_string_literal: true

class OcmAT0210 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.21.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.21.0/ocm-0.21.0-darwin-amd64.tar.gz"
      sha256 "f8eeb7b574a4d673842602375fcea99f5c4261d1d0275d9f4f02ea31c8566c31"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.21.0/ocm-0.21.0-darwin-arm64.tar.gz"
      sha256 "a7e5123094751939de37750bd93bf62f0bdad3f7efae218e1c5bfd648889b6bf"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.21.0/ocm-0.21.0-linux-amd64.tar.gz"
        sha256 "8172b95ebfe6fcc54060a41281cad9999fc275bef32c30a572985cd23111a09c"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.21.0/ocm-0.21.0-linux-arm64.tar.gz"
        sha256 "2dd83a39560cf71a698302fe91b7599b4d651a176b7c61f403e6ae75d3bdc7a0"

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
