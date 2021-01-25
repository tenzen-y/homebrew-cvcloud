# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/download_strategy.rb"
class Cvcloud < Formula
  desc "client tool to use cvcloud"
  homepage "https://gitlab.com/kindaicvlab/cvcloud/cvcloud"
  version "1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tenzen-y/cvcloud/releases/download/v1.1.0/cvcloud_1.1.0_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "cf6e572f7d435204bf650e5718efb48d335274b5c2868f12ddf18620222807d9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tenzen-y/cvcloud/releases/download/v1.1.0/cvcloud_1.1.0_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "b3c497da8dba2450ab74e483f327102558c51ed1a945fd89e70f232887f9d9f4"
  end

  def install
    bin.install "cvcloud"
  end

  test do
    system "#{bin}/cvcloud version"
  end
end
