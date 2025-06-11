# typed: false
# frozen_string_literal: true

class OcmAT0241 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.24.1"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.24.1/ocm-0.24.1-darwin-amd64.tar.gz"
      sha256 "c1c65a597ba651c5be7696fdd98fcd7e2e15d3a3dd8eee604bd0635407015cef"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.24.1/ocm-0.24.1-darwin-arm64.tar.gz"
      sha256 "5c1e3c857a45ec64ef8e2f4d89982380bd050435e9b0ffc28ecfeef8ea6c6009"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.24.1/ocm-0.24.1-linux-amd64.tar.gz"
        sha256 "c570d544c3f576553f398bbf5ddfcb0fd3daff9156902af7f5837fff8a1dbf50"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.24.1/ocm-0.24.1-linux-arm64.tar.gz"
        sha256 "9108a03af66b426a9387bf075569c3f18660f328170157fae27beeb0be74572f"

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
