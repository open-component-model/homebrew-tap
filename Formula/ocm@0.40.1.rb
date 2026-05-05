# typed: false
# frozen_string_literal: true

class OcmAT0401 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.40.1"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.40.1/ocm-0.40.1-darwin-amd64.tar.gz"
      sha256 "eb15dd9105c36b9ce0c0cb5927368d2337be0239c5938c2653711dd9d9e4de84"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.40.1/ocm-0.40.1-darwin-arm64.tar.gz"
      sha256 "e46f87d160c32d65953b1a74c550b38bf533abfc46b949b0b7d76ae21c562f1a"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.40.1/ocm-0.40.1-linux-amd64.tar.gz"
        sha256 "df233eb753366f5a90dfa75a8c4279c2bb775e63cb50f72053d5baf91ac076fc"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.40.1/ocm-0.40.1-linux-arm64.tar.gz"
        sha256 "e3d1f2a6a1d5c52129cc2bcf8cf33f97fdf5540a1a10ffff3b076ce5ffc74976"

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
