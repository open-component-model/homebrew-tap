# typed: false
# frozen_string_literal: true

class OcmAT0180 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.18.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.18.0/ocm-0.18.0-darwin-amd64.tar.gz"
      sha256 "e626f4daed890dfb93a6a2fcfe47a2655d7864c51af2468fc9330bd09b561798"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.18.0/ocm-0.18.0-darwin-arm64.tar.gz"
      sha256 "c9962ea14b551bb07c39d0c2529e70310e6b54d547f64fa29b98270f68d628ab"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.18.0/ocm-0.18.0-linux-amd64.tar.gz"
        sha256 "8109e08262d51e32ef7b1da06673364bf51a28eacb33fcdf0c3bad12c44ce587"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.18.0/ocm-0.18.0-linux-arm64.tar.gz"
        sha256 "f38e2243a730194658650e861565da3ad47669ee553473ac8b3a62095d94f531"

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
