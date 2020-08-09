# This file was generated by GoReleaser. DO NOT EDIT.
class Twtxt < Formula
  desc "📕 twtxt is a Self-Hosted, Twitter™-like Decentralised microBlogging
platform. No ads, no tracking, your content, your data!
"
  homepage "https://github.io/prologic/twtxt"
  version "0.0.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/prologic/twtxt/releases/download/0.0.12/twtxt_0.0.12_darwin_amd64.tar.gz"
    sha256 "24b5c834007ffeb190c6829da9e8aa1f1ccbc87c8e625fa5cd87ec762a8e1bef"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/prologic/twtxt/releases/download/0.0.12/twtxt_0.0.12_linux_amd64.tar.gz"
      sha256 "9c790fcc79e49c30b3260d5da9f3bd66a1156cb3544f8a9e9ff7e5df3ec987de"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/prologic/twtxt/releases/download/0.0.12/twtxt_0.0.12_linux_arm64.tar.gz"
        sha256 "cfc8c3e29f757e3939a75baa5f0da83034198c03241781d32221a540620c5497"
      else
        url "https://github.com/prologic/twtxt/releases/download/0.0.12/twtxt_0.0.12_linux_armv6.tar.gz"
        sha256 "dd3058b6d97bed65a25ae2da915a973958387f03aa7e365e59f72c6b715f8013"
      end
    end
  end

  def install
    bin.install "twt"
    bin.install "twtd"
  end
end
