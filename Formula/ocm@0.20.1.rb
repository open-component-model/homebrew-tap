# typed: false
# frozen_string_literal: true

class OcmAT0201 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.20.1"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.20.1/ocm-0.20.1-darwin-amd64.tar.gz"
      sha256 "33a968ff9901d67e4f9015ffde0494c3556a90e6e4f927f99e8ca49476d30c54"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.20.1/ocm-0.20.1-darwin-arm64.tar.gz"
      sha256 "24019be12790bd0e748ff1420ec6cfd7019618de9f06aa38cabb04d658699ca8"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.20.1/ocm-0.20.1-linux-amd64.tar.gz"
        sha256 "d42556286f2b11450d4dba056158b2f1ea5673fe20e7e6673cae70b3ae51de4f"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.20.1/ocm-0.20.1-linux-arm64.tar.gz"
        sha256 "c3f4a0d511aa12af7b6fc9619195ff8204b0970c3a7b22de35e354715f662556"

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
