# Changelog

每个版本必须在此记录变更；发布流程会提取对应版本的段落，作为 GitHub Release
正文并渲染进 Sparkle appcast 的更新说明。Sections are the change categories
(`### Added / 新增`, `### Fixed / 修复`, `### Improved / 改进`); within each
section the English bullets come first, followed by their Simplified Chinese
counterparts. 段落格式：`## <版本号> - <日期>`，条目必须写成单行。

## 1.0.0 - 2026-08-25

### Added / 新增

- The app is now released as Tinglan, owned by Haojing, with independent macOS and iOS bundle identifiers and its own GitHub update channel
- Light, Dark, and Follow System appearance modes now apply consistently to SwiftUI content, the native macOS titlebar, and sidebar materials
- 听澜现作为好景独立维护的应用发布，使用独立的 macOS / iOS Bundle ID 与 GitHub 更新通道
- 新增浅色、深色、跟随系统三种外观模式，并统一适配 SwiftUI 内容、macOS 原生标题栏与侧边栏材质

### Improved / 改进

- The macOS sidebar now uses a native AppKit split view for smooth collapse and expansion, fixed width, full-height material, and a correctly tracking system toggle
- Search uses one consistent native field across Home and search results; loading, error, and player layouts now fill the detail column correctly
- macOS 侧边栏改用 AppKit 原生分栏，实现流畅展开收起、固定宽度、全高材质与正确跟随的系统按钮
- 推荐页与搜索结果页统一使用同一个原生搜索框；加载、失败状态和播放器现可正确占满右侧内容区