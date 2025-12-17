# typed: false
# frozen_string_literal: true

class OcmAT0342 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.34.2"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.34.2/ocm-0.34.2-darwin-amd64.tar.gz"
      sha256 "ff1d93bc8ccf24d59e244a08f3d18e7d76b25ef148aa2e8da55dadd0e7ae2e99"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.34.2/ocm-0.34.2-darwin-arm64.tar.gz"
      sha256 "e9c21489c278b3107878f469a8adaaef1638686d7355b9033c769bbfa817f5d5"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.34.2/ocm-0.34.2-linux-amd64.tar.gz"
        sha256 "945c0a8ef666135f13ed895a2eb5f3de49850fd9c2a594e7a5dfb60fb0e6c34b"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.34.2/ocm-0.34.2-linux-arm64.tar.gz"
        sha256 "394c2c8b182f4e9a2c2664740a339802705b282e1a0f8189f5efac080e651923"

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
