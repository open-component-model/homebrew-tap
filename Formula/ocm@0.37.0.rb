# typed: false
# frozen_string_literal: true

class OcmAT0370 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.37.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.37.0/ocm-0.37.0-darwin-amd64.tar.gz"
      sha256 "6a69da5d4fc71cc67da735cae4768367a9573dbf190c64488cbe2eaab14e6386"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.37.0/ocm-0.37.0-darwin-arm64.tar.gz"
      sha256 "e0967068b693b141e995b5279d6c016abd4512c8dc6707be5b2735c959a5d0f8"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.37.0/ocm-0.37.0-linux-amd64.tar.gz"
        sha256 "30d981da7007da39befc2374f9b0ce5ed65e076164ff0f19009188311523fd83"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.37.0/ocm-0.37.0-linux-arm64.tar.gz"
        sha256 "aa3b00e69ed76c8d87e544040846510c6b63df566d4b468279a9002cfe10aa93"

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
