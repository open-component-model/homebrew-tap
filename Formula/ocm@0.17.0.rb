# typed: false
# frozen_string_literal: true

class OcmAT0170 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.17.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.17.0/ocm-0.17.0-darwin-amd64.tar.gz"
      sha256 "ec521041ad8ef7b31ae3ba0cc2dba95c9f16c2187d7f293779d5cc8b04b08177"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.17.0/ocm-0.17.0-darwin-arm64.tar.gz"
      sha256 "6ef0748674edb74b388302a6c9bda115d30a7cbe2110de576ba114ced89155bc"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.17.0/ocm-0.17.0-linux-amd64.tar.gz"
        sha256 "7fa160d6a9a8b75026c3e90bfabe223889761a8712cc3bcf3587c7d9ed920fbf"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.17.0/ocm-0.17.0-linux-arm64.tar.gz"
        sha256 "8f0d2c5cac51e47b50eaf318371ca290a0e282a05bda07829011242ac46ee8bf"

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
