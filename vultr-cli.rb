# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VultrCli < Formula
  desc "Official command-line tool for Vultr services"
  homepage "https://github.com/vultr/vultr-cli"
  version "3.3.1"

  on_macos do
    on_intel do
      url "https://github.com/vultr/vultr-cli/releases/download/v3.3.1/vultr-cli_v3.3.1_macOs_amd64.tar.gz"
      sha256 "a3b7f2402029d62fc37806b145c286bce90b7a17a4c1b400d4818dac7cf62938"

      def install
        bin.install "vultr-cli"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/vultr/vultr-cli/releases/download/v3.3.1/vultr-cli_v3.3.1_macOs_arm64.tar.gz"
      sha256 "ec6cd740c33f92051b15348cb3f20dd07bb67b792d77e99d7f17b8afdd4abf10"

      def install
        bin.install "vultr-cli"
        prefix.install_metafiles
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vultr/vultr-cli/releases/download/v3.3.1/vultr-cli_v3.3.1_linux_amd64.tar.gz"
        sha256 "4d4dae5d14337dca4c59ef7e8b629c5c47bb2c0a544aced9ae22583f440bfe9d"

        def install
          bin.install "vultr-cli"
          prefix.install_metafiles
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/vultr/vultr-cli/releases/download/v3.3.1/vultr-cli_v3.3.1_linux_arm32-v6.tar.gz"
        sha256 "71dba92270964408d4e96e657e300fb6fbf0b0803e85bfb500d3ad5fd327d4e6"

        def install
          bin.install "vultr-cli"
          prefix.install_metafiles
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vultr/vultr-cli/releases/download/v3.3.1/vultr-cli_v3.3.1_linux_arm64.tar.gz"
        sha256 "1032633db439cec8aa4feb5464ad4e2e87871e4724a6d9919dbbad0680c7cdd5"

        def install
          bin.install "vultr-cli"
          prefix.install_metafiles
        end
      end
    end
  end

  test do
    output = shell_output("#{bin}/vultr-cli version 2>&1", 1)
    assert_match "Please export your VULTR API key as an environment variable or add `api-key` to your config file, eg:\nexport VULTR_API_KEY='<api_key_from_vultr_account>'\n", output
  end
end
