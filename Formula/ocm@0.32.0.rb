# typed: false
# frozen_string_literal: true

class OcmAT0320 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.32.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.32.0/ocm-0.32.0-darwin-amd64.tar.gz"
      sha256 "f1c3ab93214ebd79855be32af3789c0205da42766f0cb79b9ed18d4a7fd22a21"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.32.0/ocm-0.32.0-darwin-arm64.tar.gz"
      sha256 "3a63bf5c45b13f1475d2b3099acf0b3a5b723ad6aaf02a8d0184fb03e5954e47"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.32.0/ocm-0.32.0-linux-amd64.tar.gz"
        sha256 "4e05b1ecf433308e3c3577889bc75b42be53fda6572e806b7123ff4ded5e3f78"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.32.0/ocm-0.32.0-linux-arm64.tar.gz"
        sha256 "d934ae33dc9d4cd8859fb3e992395a0836afaeb77c75ffde9860c148d19c88b5"

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
