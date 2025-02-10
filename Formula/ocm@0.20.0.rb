# typed: false
# frozen_string_literal: true

class OcmAT0200 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.20.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.20.0/ocm-0.20.0-darwin-amd64.tar.gz"
      sha256 "f2197cc7558616aff7e385a52ebdc774b071472c8c5eb06dcbcf08e34580b3df"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.20.0/ocm-0.20.0-darwin-arm64.tar.gz"
      sha256 "4ff5cee49a38c47a280d8a688939b68d684be3c7386586bf02db1720f4b9e54d"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.20.0/ocm-0.20.0-linux-amd64.tar.gz"
        sha256 "5d18564d8384ba1d3c2207bf8b8f7748ba0d5c01cc0f5ae3e0d21b53ece98f0c"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.20.0/ocm-0.20.0-linux-arm64.tar.gz"
        sha256 "f88b2e164f4ef6e96f71efd276f24878dd06ac0a8118a05e3274eea838a630bf"

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
