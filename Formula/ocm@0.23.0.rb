# typed: false
# frozen_string_literal: true

class OcmAT0230 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.23.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.23.0/ocm-0.23.0-darwin-amd64.tar.gz"
      sha256 "0d943cfe7168dced26bebf14650180d7fe732d124fc602075215ae9187c955e8"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.23.0/ocm-0.23.0-darwin-arm64.tar.gz"
      sha256 "7110e22ecb3928119d6cdb2d0f7a49b86955028eeccbca1dfba7caf6048acad8"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.23.0/ocm-0.23.0-linux-amd64.tar.gz"
        sha256 "817d6242b9cee3a8ad92e271b601492a6bedc02b5973d1100895ed3b9958cdf4"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.23.0/ocm-0.23.0-linux-arm64.tar.gz"
        sha256 "ba2e3fcb2bbae1c6ab1562e338354d146fa4679ed5c57363c804fdd5db6f2a7c"

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
