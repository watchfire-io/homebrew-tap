class Watchfire < Formula
  desc "Orchestrator for AI coding agents (CLI & daemon)"
  homepage "https://github.com/watchfire-io/watchfire"
  url "https://github.com/watchfire-io/watchfire/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2a38f2e7396774afda038fbd5708f155b337b08b3d4a3279cf0c25a277590821"
  license "UNLICENSED"

  depends_on "go" => :build

  def install
    version_pkg = "github.com/watchfire-io/watchfire/internal/buildinfo"
    ldflags = %W[
      -X #{version_pkg}.Version=#{version}
      -X #{version_pkg}.CommitHash=#{tap.user}
      -X #{version_pkg}.BuildDate=#{time.iso8601}
      -X #{version_pkg}.PostHogKey=phc_uD6jiMSzE3NVg2uvaTyIgexj76EQbhou9we1jI3iHBQ
    ]

    system "go", "build", *std_go_args(ldflags:, output: bin/"watchfired"), "./cmd/watchfired"
    system "go", "build", *std_go_args(ldflags:, output: bin/"watchfire"), "./cmd/watchfire"
  end

  service do
    run [opt_bin/"watchfired"]
    keep_alive true
    log_path var/"log/watchfired.log"
    error_log_path var/"log/watchfired.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/watchfire --version")
  end
end
