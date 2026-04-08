# typed: false
# frozen_string_literal: true

class OcmAT0390 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.39.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.39.0/ocm-0.39.0-darwin-amd64.tar.gz"
      sha256 "a70a8d30d4fa4dfa6d0176cebbe05a336915b16b44618234bf803317ca6512b4"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.39.0/ocm-0.39.0-darwin-arm64.tar.gz"
      sha256 "8fc89fb0500112b34b3596c58e01d13b48b8eaff6fe8656e14b90b483dabd975"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.39.0/ocm-0.39.0-linux-amd64.tar.gz"
        sha256 "421fb87130cd0c9320c2e65204eddfddaf39aa31580d5852ea84356df08b8a98"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.39.0/ocm-0.39.0-linux-arm64.tar.gz"
        sha256 "e93d31d88f8d9b1dda119039ba696ab90fb29a25bd6fb920bfaf4e2520328b29"

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
