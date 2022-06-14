# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VultrCli < Formula
  desc "Official command-line tool for Vultr services"
  homepage "https://github.com/vultr/vultr-cli"
  version "2.14.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vultr/vultr-cli/releases/download/v2.14.2/vultr-cli_2.14.2_macOs_64-bit.tar.gz"
      sha256 "8b5900f86ee7aefde6f7bf37e14f646a727d5ac37e0c74fb6ebbf525d9ca4356"

      def install
        bin.install "vultr-cli"
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vultr/vultr-cli/releases/download/v2.14.2/vultr-cli_2.14.2_macOs_arm64-bit.tar.gz"
      sha256 "4a8fe5289eacb725e6e5043b1ce193bf4a8b6a0ea8ac988c9f50bffe840052f8"

      def install
        bin.install "vultr-cli"
        prefix.install_metafiles
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vultr/vultr-cli/releases/download/v2.14.2/vultr-cli_2.14.2_linux_64-bit.tar.gz"
      sha256 "14e9bf2ba9bbf88aae24bd165fd72ad20711b90da837aa3aa07b4b537fe69564"

      def install
        bin.install "vultr-cli"
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vultr/vultr-cli/releases/download/v2.14.2/vultr-cli_2.14.2_linux_arm64-bit.tar.gz"
      sha256 "4617bf54fa3645cfe87b10243794598eded94ed7f5be7a74f0d765c62480ae6c"

      def install
        bin.install "vultr-cli"
        prefix.install_metafiles
      end
    end
  end

  depends_on "go"

  test do
    output = shell_output("#{bin}/vultr-cli version 2>&1", 1)
    assert_match "Please export your VULTR API key as an environment variable or add `api-key` to your config file, eg:\nexport VULTR_API_KEY='<api_key_from_vultr_account>'\n", output
  end
end
