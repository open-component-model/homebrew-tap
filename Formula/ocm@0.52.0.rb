# typed: false
# frozen_string_literal: true

class OcmAT0520 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.52.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.52.0/ocm-0.52.0-darwin-amd64.tar.gz"
      sha256 "694720f5efaea8c7d7a5054b6405d8ef39edff5cd1eb66a5c2d3103f502d76bd"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.52.0/ocm-0.52.0-darwin-arm64.tar.gz"
      sha256 "df6a5212e6008f274f29d6c49294542713324f4fb0bc7d22d5022a4ae1d25f7c"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.52.0/ocm-0.52.0-linux-amd64.tar.gz"
        sha256 "4fbafc91d8268dec4f6603ed783aea972ff1bc1087d58bc89b6690ff3c4c50f6"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.52.0/ocm-0.52.0-linux-arm64.tar.gz"
        sha256 "e795dbbd024fa74d166e4f7271ff6a89719dd1065888ce1d3acd279f06a49945"

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
