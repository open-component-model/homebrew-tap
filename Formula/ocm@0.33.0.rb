# typed: false
# frozen_string_literal: true

class OcmAT0330 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.33.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.33.0/ocm-0.33.0-darwin-amd64.tar.gz"
      sha256 "45bd858a7533410b1b324d3decbf030a1f1db189780545f4d53d486cab68ad17"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.33.0/ocm-0.33.0-darwin-arm64.tar.gz"
      sha256 "2badaf29f0e5468816555b05521d24438d31e8e82b01d668f90097388a9efe89"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.33.0/ocm-0.33.0-linux-amd64.tar.gz"
        sha256 "99258e837e8edab8c1c06379f980e227df548df680985f34b04bf7ddb005c57a"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.33.0/ocm-0.33.0-linux-arm64.tar.gz"
        sha256 "a51515656a1a2571b3edceb417b45e4fd5d1e6d8a1afed3148257a8de7b47d96"

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
