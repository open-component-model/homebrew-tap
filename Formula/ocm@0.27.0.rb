# typed: false
# frozen_string_literal: true

class OcmAT0270 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.27.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.27.0/ocm-0.27.0-darwin-amd64.tar.gz"
      sha256 "f64dcbc93d06c62c008e250644d21edde6a9c295a08dadc58d7878c2d8bb3b65"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.27.0/ocm-0.27.0-darwin-arm64.tar.gz"
      sha256 "4db3bdb89621897f64389d037805f95767bbb2d1fc063e2d8918b207c60d6394"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.27.0/ocm-0.27.0-linux-amd64.tar.gz"
        sha256 "983b768de97f6261451e14ec98331c97b1e696c897036928afbf251122d623f2"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.27.0/ocm-0.27.0-linux-arm64.tar.gz"
        sha256 "ab7843d54af7b9b63d5ce9758282b5ae13496a17c2a71c58f932c8f53697e1b7"

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
