# typed: false
# frozen_string_literal: true

class OcmAT0280 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.28.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.28.0/ocm-0.28.0-darwin-amd64.tar.gz"
      sha256 "9b0d83e756eef433721ecd29c27650088f763777725c50e2d62aa47d448d8fd2"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.28.0/ocm-0.28.0-darwin-arm64.tar.gz"
      sha256 "4fe58448caafa0c16c177d61600c1420841870a1e6ec03f14f8770796a3ed148"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.28.0/ocm-0.28.0-linux-amd64.tar.gz"
        sha256 "823ac4e8ba070afa53997efe4d1dfb6c9aeba6b5354053bfad3d45b2c73abd9f"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.28.0/ocm-0.28.0-linux-arm64.tar.gz"
        sha256 "4fa1a498cbb260fa2a266f7c39d6711fb17c59e6048cfb79e52d0c58c73942d9"

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
