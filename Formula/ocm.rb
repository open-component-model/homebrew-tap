# typed: false
# frozen_string_literal: true

class Ocm < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.55.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.55.0/ocm-0.55.0-darwin-amd64.tar.gz"
      sha256 "279d7064cd33b31dd016d868b0c6fc909ee587b8f1a14719b7b1dea5d775f81f"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.55.0/ocm-0.55.0-darwin-arm64.tar.gz"
      sha256 "37e8650a36f9cd04cac1e50b0a7e54f7de182e36e370126b669df1869d985bcd"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.55.0/ocm-0.55.0-linux-amd64.tar.gz"
        sha256 "d18649c7b0f9b3c30464bca3ce250c7b2553ed46236e8b1b1bb1e5aa5954efc8"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.55.0/ocm-0.55.0-linux-arm64.tar.gz"
        sha256 "63840fb42d8faa4a33b91b008023e11c4bea577c9a53cf08540df505ccc6b646"

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
