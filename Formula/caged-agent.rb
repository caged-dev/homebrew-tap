# typed: false
# frozen_string_literal: true

class CagedAgent < Formula
  desc "Lightweight agent that runs inside Caged sandbox VMs"
  homepage "https://github.com/caged-dev/agent"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/caged-dev/agent/releases/download/#{version}/caged-agent_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/caged-dev/agent/releases/download/#{version}/caged-agent_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/caged-dev/agent/releases/download/#{version}/caged-agent_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/caged-dev/agent/releases/download/#{version}/caged-agent_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "caged-agent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/caged-agent --version 2>&1")
  end
end
