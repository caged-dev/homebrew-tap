# typed: false
# frozen_string_literal: true

class CagedMcpServer < Formula
  desc "Model Context Protocol server for AI coding agents"
  homepage "https://github.com/caged-dev/mcp-server"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/caged-dev/mcp-server/releases/download/#{version}/caged-mcp-server_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/caged-dev/mcp-server/releases/download/#{version}/caged-mcp-server_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/caged-dev/mcp-server/releases/download/#{version}/caged-mcp-server_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/caged-dev/mcp-server/releases/download/#{version}/caged-mcp-server_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "caged-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/caged-mcp-server --version 2>&1")
  end
end
