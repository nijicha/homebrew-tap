class Walkie < Formula
  desc "Narrated videos of a code change, made by an agent (CLI and MCP server)"
  homepage "https://github.com/nijicha/walkie-engine"
  url "https://github.com/nijicha/walkie-engine/releases/download/v0.1.0-alpha/walkie-0.1.0-alpha.tar.gz"
  sha256 "39a2672bff75094e53ff23157adf60c34ce7c5836c73722484cf1a4ce077b80c"
  license "MIT"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on :macos
  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/walkie"
  end

  def caveats
    <<~EOS
      Run once to download Chromium and the Thai voice model:
        walkie setup

      Then add the Claude Code plugin:
        /plugin install walkie --marketplace nijicha/skills
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/walkie version").strip
    assert_match "default", shell_output("#{bin}/walkie profile --list")
  end
end
