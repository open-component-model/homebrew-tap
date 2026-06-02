# typed: false
# frozen_string_literal: true

class OcmAT0430 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.43.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.43.0/ocm-0.43.0-darwin-amd64.tar.gz"
      sha256 "478a9d4aa236ae027f13cb4bbfa64c068181f00791e81a350b75a131e0ccea71"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.43.0/ocm-0.43.0-darwin-arm64.tar.gz"
      sha256 "7c72487f724cad4d3905c048f7812277e3886040ec10a036a9f5cd9b874e3c64"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.43.0/ocm-0.43.0-linux-amd64.tar.gz"
        sha256 "780380501497db99ec47bf1272f62ca252b7d2205bd6e6460c0a1126fc3ab1fd"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.43.0/ocm-0.43.0-linux-arm64.tar.gz"
        sha256 "ce2fadb496edfcc921ba9083884fa82a3867da3e48d78e91c4b7dcd799ca438b"

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
