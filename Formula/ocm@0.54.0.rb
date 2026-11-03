# typed: false
# frozen_string_literal: true

class OcmAT0540 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.54.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.54.0/ocm-0.54.0-darwin-amd64.tar.gz"
      sha256 "1b863922bb7f657bace19d00bd8e5b115d8b35da49ece733ae6569e32d48385c"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.54.0/ocm-0.54.0-darwin-arm64.tar.gz"
      sha256 "c564302e999035ac98b54b61e9467be82c9de5e03087807cab025edb4643c35d"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.54.0/ocm-0.54.0-linux-amd64.tar.gz"
        sha256 "ec48f9fc42eb4ee6c8415435ca62bf72dcf8c790f4399ce5111f6488f42379b2"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.54.0/ocm-0.54.0-linux-arm64.tar.gz"
        sha256 "e16c66ec3fe6932ed578e898f8fbe97c95d43405878f550b30b1a78d0222b4aa"

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
