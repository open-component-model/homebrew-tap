# typed: false
# frozen_string_literal: true

class OcmAT0190 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.19.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.19.0/ocm-0.19.0-darwin-amd64.tar.gz"
      sha256 "d88999930a6cc933e85835f18e178d745d24aa53fb68ec361aafad77271f5253"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.19.0/ocm-0.19.0-darwin-arm64.tar.gz"
      sha256 "7fb4a46d461a124bec0813fae0182e6e12bea787faead0ba2730954ea4484dbd"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.19.0/ocm-0.19.0-linux-amd64.tar.gz"
        sha256 "cdebc73b4d66b5843b750cb49a20bc328f7e0d0c85222ab44e9f8cb13622d8e3"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.19.0/ocm-0.19.0-linux-arm64.tar.gz"
        sha256 "5faf2229fdf8b563cec7a55be212807068a583457b21c282dcf31a56eed63161"

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
