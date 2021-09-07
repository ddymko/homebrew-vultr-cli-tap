# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VultrCli < Formula
  desc "Official command-line tool for Vultr services"
  homepage "https://github.com/vultr/vultr-cli"
  version "2.8.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vultr/vultr-cli/releases/download/v2.8.2/vultr-cli_2.8.2_macOs_64-bit.tar.gz"
      sha256 "664d891f6ea5fde0a59e0a08cd3fb686444ae27b5e5f84db5f9c57e227b0ceac"
    end
    if Hardware::CPU.arm?
      url "https://github.com/vultr/vultr-cli/releases/download/v2.8.2/vultr-cli_2.8.2_macOs_arm64-bit.tar.gz"
      sha256 "e57485170b91d922476581e35bb17601251f167190f0ee8df1b70e7275324f9a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vultr/vultr-cli/releases/download/v2.8.2/vultr-cli_2.8.2_linux_64-bit.tar.gz"
      sha256 "f3c9dbbef155e62f16e4c69cb08258f3eb058b0773d79f66e9a86ddfe24129ae"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vultr/vultr-cli/releases/download/v2.8.2/vultr-cli_2.8.2_linux_arm64-bit.tar.gz"
      sha256 "9e202f256824431b6e43566d0d68b3617beebe09ff18a9b79866090231e9451b"
    end
  end

  depends_on "go"

  def install
    bin.install "vultr-cli"
    prefix.install_metafiles
  end

  test do
    output = shell_output("#{bin}/vultr-cli version 2>&1", 1)
    assert_match "Please export your VULTR API key as an environment variable or add `api-key` to your config file, eg:\nexport VULTR_API_KEY='<api_key_from_vultr_account>'\n", output
  end
end
