# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ocm < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/ocm/releases/download/v0.1.0/ocm_Darwin_x86_64.tar.gz"
      sha256 "2d81ffc337f28b4fea8fc64973dd574bf59a49475cbe2006a0af2bc541729f94"

      def install
        bin.install "ocm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/open-component-model/ocm/releases/download/v0.1.0/ocm_Darwin_arm64.tar.gz"
      sha256 "9f8506d13f6ef42cb972f596cb955408301c7cf41d3b1f148e0b6627a052b9ae"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/open-component-model/ocm/releases/download/v0.1.0/ocm_Linux_arm64.tar.gz"
      sha256 "85349096abb71c30470e059e36f7a274a359ed7c20624818ddaa36766ba6b52e"

      def install
        bin.install "ocm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/ocm/releases/download/v0.1.0/ocm_Linux_x86_64.tar.gz"
      sha256 "9723a801204a990a42a6f23f5176b7dabcbb065a1e459867bf2f5676ba19e6f7"

      def install
        bin.install "ocm"
      end
    end
  end

  test do
    system "#{bin}/ocm --version"
  end
end
