# Changelog

每个版本必须在此记录变更；发布流程会提取对应版本的段落，作为 GitHub Release
正文并渲染进 Sparkle appcast 的更新说明。Sections are the change categories
(`### Added / 新增`, `### Fixed / 修复`, `### Improved / 改进`); within each
section the English bullets come first, followed by their Simplified Chinese
counterparts. 段落格式：`## <版本号> - <日期>`，条目必须写成单行。

## 1.1.2 - 2026-08-26

### Fixed / 修复

- Home cards now use value-based navigation, so switching sidebar sections after opening Daily Recommendations, a playlist, an album, or an artist correctly returns to the selected section
- On iOS 16 and 17, tapping the mini player now opens the full-screen Now Playing page with a bottom slide-up transition
- macOS buttons no longer show an unwanted focus outline after being clicked; text-field focus feedback remains unchanged
- 推荐页卡片改为值驱动导航；打开每日推荐、歌单、专辑或歌手后再切换侧边栏，可以正确进入所选页面
- iOS 16 和 17 上点击迷你播放器现在可以通过底部上滑动画正常打开全屏播放页
- macOS 按钮点击后不再显示多余的焦点外框，文本输入框的焦点提示保持不变

## 1.1.1 - 2026-08-26

### Fixed / 修复

- Pressing Return on the default search suggestion now performs the search on the first attempt, and returning from search to Home clears the search field
- 首次打开应用后直接对默认搜索词按回车即可正常搜索；从搜索页返回推荐页时会清空搜索框

## 1.1.0 - 2026-08-26

### Added / 新增

- Added AirPlay and Bluetooth output selection, macOS Dock playback controls with recent sources, and optional romaji above Japanese lyrics
- iOS gains an immersive Now Playing experience, Liquid Glass tab navigation, iOS 16 support, and TrollStore-assisted in-app updates
- 新增 AirPlay 与蓝牙输出设备选择、macOS Dock 播放控制和最近播放来源，以及可选的日文歌词罗马音
- iOS 新增沉浸式播放页、液态玻璃标签导航、iOS 16 支持及 TrollStore 应用内更新

### Fixed / 修复

- Fixed macOS window sizing and toolbar spacing around the immersive player, and corrected SMS login, library navigation, playback controls, and several iOS layouts
- 修复 macOS 沉浸播放页的窗口尺寸与工具栏留白，并修复短信登录、音乐库导航、播放控制及多处 iOS 布局问题

### Improved / 改进

- Playback state updates now redraw less of the interface, while compact track lists and Now Playing layouts adapt more cleanly across device sizes
- 优化播放状态刷新范围，并改进紧凑歌曲列表与播放页面在不同设备尺寸下的适配

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
