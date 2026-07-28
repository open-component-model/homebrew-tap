# typed: false
# frozen_string_literal: true

class OcmAT0470 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.47.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.47.0/ocm-0.47.0-darwin-amd64.tar.gz"
      sha256 "733e3dae8e63a9f6bc869c2cac886c378d163b4d49a4f559b982141d7fc50482"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.47.0/ocm-0.47.0-darwin-arm64.tar.gz"
      sha256 "be35d26f3bdce2c56d69e57a4b5dc01932a835d70cb315bfd7ce7bd6691e616a"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.47.0/ocm-0.47.0-linux-amd64.tar.gz"
        sha256 "56a55821ededcdeac9b9304f076dcff5d90204b11972e6dd55cca22f07119f53"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.47.0/ocm-0.47.0-linux-arm64.tar.gz"
        sha256 "b7f67ead3732b0726e8b8a2868c941b97cba0b31628afaa17a2de1660de94bb7"

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
