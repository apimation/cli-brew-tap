# This file was generated by GoReleaser. DO NOT EDIT.
class Apimation < Formula
  desc "apimation cli client"
  homepage "https://apimation.com/"
  version "0.54.8"

  if OS.mac?
    url "https://github.com/apimation/cli-client/releases/download/v0.54.8/apimation_0.54.8_macOS_amd64.zip"
    sha256 "dfcda9a89771b1396dabfa73705c5141e42a1bd25b679f5f5db3fc8b82e0a7bd"
  elsif OS.linux?
    url "https://github.com/apimation/cli-client/releases/download/v0.54.8/apimation_0.54.8_linux_amd64.zip"
    sha256 "200c58be2f4ccf50f551243137f6e42a721ca372b579e7dea1c334278ebada91"
  end
  
  depends_on "git"

  def install
    bin.install "apimation"
  end

  test do
    system "#{bin}/apimation --version"
  end
end
