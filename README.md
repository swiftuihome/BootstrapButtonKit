# BootstrapStyle SwiftUI Components

![SwiftUI](https://img.shields.io/badge/SwiftUI-5.9+-blue.svg)
![Platforms](https://img.shields.io/badge/Platforms-iOS%20%7C%20macOS%20%7C%20tvOS-lightgrey.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

一个受Bootstrap启发的SwiftUI组件库，提供美观、一致的按钮样式和颜色系统。

## 功能特性

- 🎨 完整的Bootstrap风格颜色系统
- 🔘 多种按钮样式和变体
- 📱 响应式设计，适配所有Apple平台
- ⚙️ 高度可定制的外观
- 🏗️ 易于集成和使用

## 安装

### Swift Package Manager

在Package.swift中添加以下依赖：

```swift
dependencies: [
    .package(url: "https://github.com/swiftuihome/BootstrapButtonKit.git", from: "1.0.0")
]
```

或通过Xcode的"File > Add Packages..."菜单添加。

## 颜色系统

### 主题颜色 (无色调变化)

```swift
public enum ThemeColor: String, CaseIterable {
    case primary, secondary, success, danger, warning, info, light, dark, black, white
}
```

### 彩色 (带色调变化)

```swift
public enum ShadedColor: String, CaseIterable {
    case blue, indigo, purple, pink, red, orange, yellow, green, teal, cyan, gray
}

public enum Shade: Int, CaseIterable {
    case s100 = 100, s200 = 200, s300 = 300, s400 = 400,
         s500 = 500, s600 = 600, s700 = 700, s800 = 800, s900 = 900
}
```

## 按钮使用指南

### 基本用法

```swift
Button("Click Me") {
    // 按钮动作
}
.bootstrapButtonStyle(tint: .primary) // 使用主色调
```

### 按钮样式选项

| 参数      | 类型                     | 默认值       | 描述                                     |
| --------- | ------------------------ | ------------ | ---------------------------------------- |
| `tint`    | `BootstrapColor`         | `.blue()`    | 按钮颜色                                 |
| `size`    | `BootstrapButtonSize`    | `.medium`    | 按钮尺寸 (`small`, `medium`, `large`)    |
| `variant` | `BootstrapButtonVariant` | `.solid`     | 按钮变体 (`solid`, `outline`)            |
| `layout`  | `BootstrapButtonLayout`  | `.expanded`  | 布局模式 (`compact`, `expanded`)         |
| `rounded` | `BootstrapButtonRounded` | `.custom(6)` | 圆角样式 (`square`, `capsule`, `custom`) |

### 预定义按钮样式

#### 主题色按钮

```swift
.primaryButtonStyle()               // 主要按钮
.secondaryButtonStyle()             // 次要按钮
.successButtonStyle()               // 成功按钮
.dangerButtonStyle()                // 危险按钮
.warningButtonStyle()               // 警告按钮
.infoButtonStyle()                  // 信息按钮
.lightButtonStyle()                 // 浅色按钮
.darkButtonStyle()                  // 深色按钮
.blackButtonStyle()                 // 黑色按钮
.whiteButtonStyle()                 // 白色按钮
```

#### 彩色按钮 (可指定色调)

```swift
.blueButtonStyle(.s500)             // 蓝色按钮
.indigoButtonStyle(.s600)           // 靛蓝按钮
.purpleButtonStyle(.s700)           // 紫色按钮
.pinkButtonStyle(.s500)             // 粉色按钮
.redButtonStyle(.s600)              // 红色按钮
.orangeButtonStyle(.s500)           // 橙色按钮
.yellowButtonStyle(.s500)           // 黄色按钮
.greenButtonStyle(.s600)            // 绿色按钮
.tealButtonStyle(.s500)             // 蓝绿色按钮
.cyanButtonStyle(.s500)             // 青色按钮
.grayButtonStyle(.s500)             // 灰色按钮
```

### 完整示例

```swift
VStack(spacing: 20) {
    // 主题色按钮示例
    Button("Primary Button") {}
        .primaryButtonStyle()
    
    Button("Danger Outline") {}
        .dangerButtonStyle(variant: .outline)
    
    // 彩色按钮示例
    Button("Blue 500") {}
        .blueButtonStyle()
    
    Button("Red 600") {}
        .redButtonStyle(.s600, size: .large)
    
    // 自定义按钮
    Button("Custom Button") {}
        .bootstrapButtonStyle(
            tint: .purple(.s700),
            size: .small,
            variant: .outline,
            rounded: .capsule
        )
}
.padding()
```

## 颜色预览

您可以使用内置的`BootstrapButtonView`来预览所有可用颜色和样式：

```swift
struct ContentView: View {
    var body: some View {
        BootstrapButtonView()
    }
}
```

## 贡献指南

欢迎提交Pull Request或Issue。在提交代码前请确保：
1. 代码符合Swift风格指南
2. 添加必要的测试
3. 更新相关文档

## 许可证

本项目采用MIT许可证。详见[LICENSE](LICENSE)文件。
