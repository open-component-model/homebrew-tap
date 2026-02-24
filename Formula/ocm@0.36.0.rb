# typed: false
# frozen_string_literal: true

class OcmAT0360 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.36.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.36.0/ocm-0.36.0-darwin-amd64.tar.gz"
      sha256 "6d7c16075de5bb7b5e13d807819604d6a0aa811bcf512d6a2f24055850c3a8ce"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.36.0/ocm-0.36.0-darwin-arm64.tar.gz"
      sha256 "fd439bd92f2683131cd973c016a2ebe1907a05ac841665df68755e8e6ce0d31a"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.36.0/ocm-0.36.0-linux-amd64.tar.gz"
        sha256 "58f259e08fe4aaad1b4cf42b6b84f08fda0505e37a1605a9bcbf34fdf9b4e48a"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.36.0/ocm-0.36.0-linux-arm64.tar.gz"
        sha256 "b1589081658a6f41a1644b296cf580a7d22ae9522266cfbbe048426fea8eb7e5"

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
