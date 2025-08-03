//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import Foundation

// 主颜色定义
//public struct BootstrapColor {
//    public let baseColor: BaseColor
//    public let shade: Shade?
//
//    public init(baseColor: BaseColor, shade: Shade? = nil) {
//        self.baseColor = baseColor
//        self.shade = shade
//    }
//}
//
//extension BootstrapColor {
//    public enum BaseColor: String, CaseIterable, Sendable {
//        case primary, secondary, success, danger, warning, info, light, dark, black, white
//        case blue, indigo, purple, pink, red, orange, yellow, green, teal, cyan, gray
//
//        public var description: String {
//            rawValue.capitalized
//        }
//    }
//
//    public enum Shade: Int, CaseIterable, Sendable {
//        case s100 = 100
//        case s200 = 200
//        case s300 = 300
//        case s400 = 400
//        case s500 = 500
//        case s600 = 600
//        case s700 = 700
//        case s800 = 800
//        case s900 = 900
//    }
//}
//
//// MARK: - Static Constructors
//extension BootstrapColor {
//    // 主题色
//    public static var primary: Self { .init(baseColor: .primary) }
//    public static var secondary: Self { .init(baseColor: .secondary) }
//    public static var success: Self { .init(baseColor: .success) }
//    public static var danger: Self { .init(baseColor: .danger) }
//    public static var warning: Self { .init(baseColor: .warning) }
//    public static var info: Self { .init(baseColor: .info) }
//    public static var light: Self { .init(baseColor: .light) }
//    public static var dark: Self { .init(baseColor: .dark) }
//    public static var black: Self { .init(baseColor: .black) }
//    public static var white: Self { .init(baseColor: .white) }
//
//    // 颜色+色阶
//    public static func blue(_ shade: Shade = .s500) -> Self { .init(baseColor: .blue, shade: shade) }
//    public static func indigo(_ shade: Shade = .s500) -> Self { .init(baseColor: .indigo, shade: shade) }
//    public static func purple(_ shade: Shade = .s500) -> Self { .init(baseColor: .purple, shade: shade) }
//    public static func pink(_ shade: Shade = .s500) -> Self { .init(baseColor: .pink, shade: shade) }
//    public static func red(_ shade: Shade = .s500) -> Self { .init(baseColor: .red, shade: shade) }
//    public static func orange(_ shade: Shade = .s500) -> Self { .init(baseColor: .orange, shade: shade) }
//    public static func yellow(_ shade: Shade = .s500) -> Self { .init(baseColor: .yellow, shade: shade) }
//    public static func green(_ shade: Shade = .s500) -> Self { .init(baseColor: .green, shade: shade) }
//    public static func teal(_ shade: Shade = .s500) -> Self { .init(baseColor: .teal, shade: shade) }
//    public static func cyan(_ shade: Shade = .s500) -> Self { .init(baseColor: .cyan, shade: shade) }
//    public static func gray(_ shade: Shade = .s500) -> Self { .init(baseColor: .gray, shade: shade) }
//}


public struct BootstrapColor {
    public enum ThemeColor: String, CaseIterable, Sendable {
        case primary, secondary, success, danger, warning, info, light, dark, black, white
        
        public var description: String {
            rawValue.capitalized
        }
    }
    
    public enum ShadedColor: String, CaseIterable, Sendable {
        case blue, indigo, purple, pink, red, orange, yellow, green, teal, cyan, gray
        
        public var description: String {
            rawValue.capitalized
        }
    }
    
    public enum Shade: Int, CaseIterable, Sendable {
        case s100 = 100
        case s200 = 200
        case s300 = 300
        case s400 = 400
        case s500 = 500
        case s600 = 600
        case s700 = 700
        case s800 = 800
        case s900 = 900
        
        public var description: String {
            "\(rawValue)"
        }
    }
    
    // 实际存储的颜色类型
    let themeColor: ThemeColor?
    let shadedColor: ShadedColor?
    let shade: Shade?
    
    private init(themeColor: ThemeColor? = nil, shadedColor: ShadedColor? = nil, shade: Shade? = nil) {
        self.themeColor = themeColor
        self.shadedColor = shadedColor
        self.shade = shade
    }
    
    // MARK: - 静态构造方法
    
    // 主题色构造方法
    public static func theme(_ color: ThemeColor) -> BootstrapColor {
        BootstrapColor(themeColor: color)
    }
    
    // 彩色构造方法
    public static func shaded(_ color: ShadedColor, shade: Shade = .s500) -> BootstrapColor {
        BootstrapColor(shadedColor: color, shade: shade)
    }
    
    // 便捷访问属性
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
