# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/download_strategy.rb"
class Cvcloud < Formula
  desc "client tool to use cvcloud"
  homepage "https://gitlab.com/kindaicvlab/cvcloud/cvcloud"
  version "1.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tenzen-y/cvcloud/releases/download/v1.1.1/cvcloud_1.1.1_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "b5c63fa4ffd51b761a5914b6ae2d0db10315df9cfb49927ced4449815cf0ea6e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tenzen-y/cvcloud/releases/download/v1.1.1/cvcloud_1.1.1_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "a676c86b19633ca94c881f73a458fd3686c1664fa443eb83bc295651337011da"
  end

  def install
    bin.install "cvcloud"
  end

  test do
    system "#{bin}/cvcloud version"
  end
end
