//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

// 扩展功能
import SwiftUI

extension BootstrapColor {
    // MARK: - 颜色实用工具
    
    /// 获取颜色的对比文本色（自动判断浅色/深色背景）
    public var contrastingTextColor: Color {
        backgroundColor.isLight() ? .black : .white
    }
    
    /// 生成比当前颜色浅的变体
    public func lighter(by percentage: CGFloat = 0.2) -> Color {
        backgroundColor.adjustBrightness(percentage: abs(percentage))
    }
    
    /// 生成比当前颜色深的变体
    public func darker(by percentage: CGFloat = 0.2) -> Color {
        backgroundColor.adjustBrightness(percentage: -abs(percentage))
    }
}

// MARK: - 颜色调试扩展
extension BootstrapColor: CustomDebugStringConvertible {
    public var debugDescription: String {
        if let themeColor = themeColor {
            return "ThemeColor.\(themeColor.rawValue)"
        } else if let shadedColor = shadedColor, let shade = shade {
            return "ShadedColor.\(shadedColor.rawValue)-\(shade.rawValue)"
        }
        return "UnknownColor"
    }
}
