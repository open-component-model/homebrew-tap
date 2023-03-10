# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ocm < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.3.0-rc.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/ocm/releases/download/v0.3.0-rc.1/ocm-0.3.0-rc.1-darwin-amd64.tar.gz"
      sha256 "aadb80a34cb161a3a4120e424f449210f450c63e5f08a81617e6b4035e60cd22"

      def install
        bin.install "ocm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/open-component-model/ocm/releases/download/v0.3.0-rc.1/ocm-0.3.0-rc.1-darwin-arm64.tar.gz"
      sha256 "6df8414128c10642b002178107fee4b3f8440fccc78e04fd43aa98b1e8259476"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/open-component-model/ocm/releases/download/v0.3.0-rc.1/ocm-0.3.0-rc.1-linux-arm64.tar.gz"
      sha256 "aadee5e3d1b86fc2d8378aeea86adc3887a24276a38549e68e80912aa5acc8f7"

      def install
        bin.install "ocm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/ocm/releases/download/v0.3.0-rc.1/ocm-0.3.0-rc.1-linux-amd64.tar.gz"
      sha256 "f3ce6cae9c051e4b12ec30dec21eb0934c1f19fe04eb8c7c27c608255be5dab2"

      def install
        bin.install "ocm"
      end
    end
  end

  test do
    system "#{bin}/ocm --version"
  end
end
