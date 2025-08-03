//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

public struct BootstrapColor {
    // MARK: - 颜色类型定义
    
    /// 主题色（无色阶）
    public enum ThemeColor: String, CaseIterable, Sendable {
        case primary, secondary, success, danger, warning, info, light, dark, black, white
        
        public var description: String {
            "\(rawValue)"
        }
    }
    
    /// 彩色（带色阶）
    public enum ShadedColor: String, CaseIterable, Sendable {
        case blue, indigo, purple, pink, red, orange, yellow, green, teal, cyan, gray
        
        public var description: String {
            "\(rawValue)"
        }
    }
    
    /// 色阶 (100-900)
    public enum Shade: Int, CaseIterable {
        case s100 = 100, s200 = 200, s300 = 300, s400 = 400
        case s500 = 500, s600 = 600, s700 = 700, s800 = 800, s900 = 900
    }
    
    // MARK: - 存储属性
    
    private let themeColor: ThemeColor?
    private let shadedColor: ShadedColor?
    private let shade: Shade?
    
    // MARK: - 初始化方法
    
    private init(themeColor: ThemeColor? = nil,
                 shadedColor: ShadedColor? = nil,
                 shade: Shade? = nil) {
        self.themeColor = themeColor
        self.shadedColor = shadedColor
        self.shade = shade
    }
    
    // MARK: - 静态构造方法
    
    /// 主题色构造方法
    public static func theme(_ color: ThemeColor) -> BootstrapColor {
        BootstrapColor(themeColor: color)
    }
    
    /// 彩色构造方法
    public static func shaded(_ color: ShadedColor, shade: Shade = .s500) -> BootstrapColor {
        BootstrapColor(shadedColor: color, shade: shade)
    }
    
    // MARK: - 便捷访问属性
    
    public static var primary: BootstrapColor { .theme(.primary) }
    public static var secondary: BootstrapColor { .theme(.secondary) }
    public static var success: BootstrapColor { .theme(.success) }
    public static var danger: BootstrapColor { .theme(.danger) }
    public static var warning: BootstrapColor { .theme(.warning) }
    public static var info: BootstrapColor { .theme(.info) }
    public static var light: BootstrapColor { .theme(.light) }
    public static var dark: BootstrapColor { .theme(.dark) }
    public static var black: BootstrapColor { .theme(.black) }
    public static var white: BootstrapColor { .theme(.white) }
    
    public static var blue: BootstrapColor { .shaded(.blue, shade: .s500) }
    public static var indigo: BootstrapColor { .shaded(.indigo, shade: .s500) }
    public static var purple: BootstrapColor { .shaded(.purple, shade: .s500) }
    public static var pink: BootstrapColor { .shaded(.pink, shade: .s500) }
    public static var red: BootstrapColor { .shaded(.red, shade: .s500) }
    public static var orange: BootstrapColor { .shaded(.orange, shade: .s500) }
    public static var yellow: BootstrapColor { .shaded(.yellow, shade: .s500) }
    public static var green: BootstrapColor { .shaded(.green, shade: .s500) }
    public static var teal: BootstrapColor { .shaded(.teal, shade: .s500) }
    public static var cyan: BootstrapColor { .shaded(.cyan, shade: .s500) }
    public static var gray: BootstrapColor { .shaded(.gray, shade: .s500) }
    
    public static func blue(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.blue, shade: shade) }
    public static func indigo(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.indigo, shade: shade) }
    public static func purple(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.purple, shade: shade) }
    public static func pink(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.pink, shade: shade) }
    public static func red(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.red, shade: shade) }
    public static func orange(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.orange, shade: shade) }
    public static func yellow(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.yellow, shade: shade) }
    public static func green(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.green, shade: shade) }
    public static func teal(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.teal, shade: shade) }
    public static func cyan(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.cyan, shade: shade) }
    public static func gray(_ shade: Shade = .s500) -> BootstrapColor { .shaded(.gray, shade: shade) }
}

// MARK: - 颜色值扩展
extension BootstrapColor {
    /// 获取背景色
    public var backgroundColor: Color {
        if let themeColor = themeColor {
            return ThemeColors.color(for: themeColor)
        } else if let shadedColor = shadedColor, let shade = shade {
            return ShadedColors.color(for: shadedColor, shade: shade)
        }
        return .Shaded.blue500 // 默认颜色
    }
    
    /// 获取文本颜色（自动对比）
    public var textColor: Color {
        backgroundColor.isLight() ? .Shaded.gray900 : .Theme.white
    }
    
    /// 边框颜色
    public var borderColor: Color {
        backgroundColor
    }
}
