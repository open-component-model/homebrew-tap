# typed: false
# frozen_string_literal: true

class OcmAT0440 < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.44.0"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.44.0/ocm-0.44.0-darwin-amd64.tar.gz"
      sha256 "0a42d83f6309c458eab599f1248373617c777fd6a532f0eb200fc06c8b292b10"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.44.0/ocm-0.44.0-darwin-arm64.tar.gz"
      sha256 "d9d2015c1d94530c90af8e32425ccef949800627b3da1fbf2e585b7c5ca1245c"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.44.0/ocm-0.44.0-linux-amd64.tar.gz"
        sha256 "49775e73fea26d86db9f847b60384a250c9e064eee021da25afbad043de7a3d0"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.44.0/ocm-0.44.0-linux-arm64.tar.gz"
        sha256 "9546f7dfd4afcb0e1b3b8a9952bd037ea536167ac9305365698390ddc03ae491"

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
