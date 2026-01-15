cask "zedis" do
  # 1. 定义架构变量
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.8"

  # 2. 分别定义两种架构的 SHA256
  # 格式：sha256 arm: "ARM哈希", intel: "Intel哈希"
  sha256 arm:   "sha256:44eb9a2c7994a5c3a3df784e03687da59e026ce959ecd346014a51c25a7f9ad4",
         intel: "sha256:758ed940c8fd1293e6fc3bb073a6133be484c1b94ad9d4a2f66503cf1f48282b"                            

  # 3. 动态 URL
  # #{arch} 会自动根据当前机器替换为 "aarch64" 或 "x86_64"
  url "https://github.com/vicanso/zedis/releases/download/v#{version}/Zedis-#{arch}.dmg"

  name "Zedis"
  desc "Blazing-fast, native Redis GUI built with Rust and GPUI"
  homepage "https://github.com/vicanso/zedis"

  depends_on macos: ">= :monterey"

  app "Zedis.app"

  zap trash: [
    "~/Library/Application Support/com.bigtree.zedis",
    "~/Library/Saved Application State/com.bigtree.zedis.savedState",
  ]
end