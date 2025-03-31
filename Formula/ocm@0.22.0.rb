# typed: false
# frozen_string_literal: true

class OcmAT0220 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.22.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.22.0/ocm-0.22.0-darwin-amd64.tar.gz"
      sha256 "8b7c9b92e601dd820ed8170cd52b002a7680a871039a17766412eee4f9f78e4f"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.22.0/ocm-0.22.0-darwin-arm64.tar.gz"
      sha256 "5a9313e798c0f025943342fac9d8342980d42bfc15db75242b7b316aae516ec3"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.22.0/ocm-0.22.0-linux-amd64.tar.gz"
        sha256 "4e770414e83dafb63862c02a4d23bdebb7f1dd52b52a50b965c110a5dd437bcb"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.22.0/ocm-0.22.0-linux-arm64.tar.gz"
        sha256 "d0b302d1393840c82aa082701c70377248fdf28c8247674b10a05a961a6b8b09"

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
