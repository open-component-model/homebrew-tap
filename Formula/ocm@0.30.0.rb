# typed: false
# frozen_string_literal: true

class OcmAT0300 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.30.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.30.0/ocm-0.30.0-darwin-amd64.tar.gz"
      sha256 "0942391f48fd4f120666b12fa171aa4bc014450e93e4b61c95e4d7ef55659b4b"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.30.0/ocm-0.30.0-darwin-arm64.tar.gz"
      sha256 "671286ec9157d1680f5207dcf7118597e21f5a2e4d8dcc5d1c44e6e6f817629d"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.30.0/ocm-0.30.0-linux-amd64.tar.gz"
        sha256 "c1a494a516873aa0c9c5dd0ad09ff70c97b327f686403111e937e9fe8041c389"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.30.0/ocm-0.30.0-linux-arm64.tar.gz"
        sha256 "6f7b8c575894583fcc8381cbbe0e5324a4b45fd5a6863a0e8e07d645634b3395"

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
