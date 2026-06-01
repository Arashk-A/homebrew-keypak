class Keypak < Formula
  desc "KeyOpera CLI — create, validate, pack, and install keyboard sound packs"
  homepage "https://github.com/birangdev/homebrew-keypak"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.0/keypak-arm64.tar.gz"
      sha256 "06beb1e741c86f4914440c8411c3880f69f84da099fbd06a48003f63aecec2b8" # arm64
    end
    on_intel do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.0/keypak-x86_64.tar.gz"
      sha256 "a26b2bfe0865e59c853d765463eaade700fd85e2e4e07d096ca1ce050fea8934" # x86_64
    end
  end

  def install
    bin.install Dir["keypak-*"].first => "keypak"
  end

  test do
    assert_match "keypak", shell_output("#{bin}/keypak --version")
  end
end
