class Walkie < Formula
  desc "Narrated videos of a code change, made by an agent (CLI and MCP server)"
  homepage "https://github.com/nijicha/walkie-engine"
  url "https://github.com/nijicha/walkie-engine/releases/download/v0.2.2-alpha/walkie-0.2.2-alpha.tar.gz"
  sha256 "162fb27192dc9b77f4af9aec963f93c5f2eaa765617345bd31c314988d64ae4f"
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
      Run once to download Chromium and pick the voices (Thai, English):
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
