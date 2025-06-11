# typed: false
# frozen_string_literal: true

class OcmAT0231 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.23.1"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.23.1/ocm-0.23.1-darwin-amd64.tar.gz"
      sha256 "25a542a7ea4f7e2dddef7b02a2e7c82bb9eacd12f89dcd442ed29b3da05a7b98"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.23.1/ocm-0.23.1-darwin-arm64.tar.gz"
      sha256 "51c244816f92e3fd3c4b6433abc03d53ffb609cfe01a4471fbde09643428587a"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.23.1/ocm-0.23.1-linux-amd64.tar.gz"
        sha256 "34c1dcce5601756485bb3c8f83b040d0b04522f12ddedb898d13b699a753192d"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.23.1/ocm-0.23.1-linux-arm64.tar.gz"
        sha256 "a0ec844e98bafef78856ccfb8687047e82180464494184f1027b67f88bef5dd7"

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
