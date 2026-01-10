cask "zedis" do
  # 1. 版本号
  version "0.1.6"
  # 2. 你的 .dmg 文件的 SHA256 (运行 `shasum -a 256 zedis.dmg` 获取)
  sha256 "3a2886d3a5ecd0144c81a5919a688eb36604353cdb0c75379f19af0f2e10756f"

  # 3. GitHub Release 的 .dmg 下载链接
  url "https://github.com/vicanso/zedis/releases/download/v#{version}/Zedis-aarch64.dmg"

  # 4. 基础信息
  name "Zedis"
  desc "A blazing-fast, native Redis GUI built with Rust and GPUI"
  homepage "https://github.com/vicanso/zedis"

  # 5. ⚠️ 关键：告诉 Homebrew 安装 DMG 里的哪个 App
  # 确保你的 DMG 打开后，里面的文件真的叫 "Zedis.app" (区分大小写)
  app "Zedis.app"

  # 6. (可选但推荐) 清理残留配置
  # 当用户运行 `brew uninstall --zap zedis` 时会清理这些路径
  # 根据你之前的日志，你的配置路径应该是 com.bigtree.zedis
  zap trash: [
    "~/Library/Application Support/com.bigtree.zedis",
    "~/Library/Saved Application State/com.bigtree.zedis.savedState",
  ]
end
