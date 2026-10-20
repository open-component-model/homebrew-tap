# typed: false
# frozen_string_literal: true

class Ocm < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.53.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.53.0/ocm-0.53.0-darwin-amd64.tar.gz"
      sha256 "a731cb363909f19da1eb5609313f7d34fc9a127f9808e38c9212357ff63b946f"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.53.0/ocm-0.53.0-darwin-arm64.tar.gz"
      sha256 "ca49c06497fd27a25a01b4b462dafecbb5df67b930f296f89f5022b954e21b06"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.53.0/ocm-0.53.0-linux-amd64.tar.gz"
        sha256 "1b6e9142f899d4879cffa1475e7398a9bf415a451bd60e006afe9b09fdfd6432"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.53.0/ocm-0.53.0-linux-arm64.tar.gz"
        sha256 "cb3767d79ec0b6d4c629406acc115d283296af56d7af11c5511c24352caedcea"

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
