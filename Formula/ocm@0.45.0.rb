# typed: false
# frozen_string_literal: true

class OcmAT0450 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.45.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.45.0/ocm-0.45.0-darwin-amd64.tar.gz"
      sha256 "ae9f9c4e4b46b64119b5f8329e74527c7a056c0a5296e3989dde8431b8a1dc9e"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.45.0/ocm-0.45.0-darwin-arm64.tar.gz"
      sha256 "680b31cd3e20b6e6c3f0455afac638bd49d696acb3b30ca90684a613c56d8f5a"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.45.0/ocm-0.45.0-linux-amd64.tar.gz"
        sha256 "b107df61d0fed89916c874eaafa3572f66805e3a20a66ef10eabbebf88a76faf"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.45.0/ocm-0.45.0-linux-arm64.tar.gz"
        sha256 "4cbe5d20a4709ce780a2062c230e10a5733fa8c32579f1c4dbea9770dd3efafd"

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
