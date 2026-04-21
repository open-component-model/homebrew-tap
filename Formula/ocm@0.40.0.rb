# typed: false
# frozen_string_literal: true

class OcmAT0400 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.40.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.40.0/ocm-0.40.0-darwin-amd64.tar.gz"
      sha256 "28c52a568f16bab28d8a70ad72c61acf720edbc54ba4ea3b9796f50689568360"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.40.0/ocm-0.40.0-darwin-arm64.tar.gz"
      sha256 "dd6b3b7c551a7b428de3ab6791cd384df1bef98796dae4169761d4f5bcc4bce6"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.40.0/ocm-0.40.0-linux-amd64.tar.gz"
        sha256 "2e49e03fa5bf184df417de4112365088c611428cd8da9843095605db0452d679"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.40.0/ocm-0.40.0-linux-arm64.tar.gz"
        sha256 "81dc8ffbb8e5d3bb3d4f51ffb4d00dd80a3b88da050fbfe136fedb870702d06f"

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
