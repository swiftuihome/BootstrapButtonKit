//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

// 颜色工具
import SwiftUI

public extension Color {
    /// 调整颜色亮度
    func adjustBrightness(percentage: CGFloat) -> Color {
#if canImport(UIKit)
        let uiColor = UIColor(self)
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        uiColor.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return Color(hue: hue, saturation: saturation, brightness: max(0, min(brightness + percentage, 1)), opacity: alpha)
#else
        return self // macOS 或其他平台暂不处理
#endif
    }
}

// MARK: - 颜色计算工具
extension Color {
    /// HEX字符串转Color（原Color扩展的独立实现）
    public init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(.sRGB, red: Double(r)/255, green: Double(g)/255, blue: Double(b)/255, opacity: Double(a)/255)
    }
    
    /// 判断颜色是否为浅色
    func isLight(threshold: Double = 0.6) -> Bool {
#if canImport(UIKit)
        // iOS/tvOS 使用 UIKit
        let uiColor = UIColor(self)
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 1
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
#elseif canImport(AppKit)
        // macOS 使用 NSColor
        let nsColor = NSColor(self)
        let rgbColor = nsColor.usingColorSpace(.deviceRGB) ?? .black
        let red = rgbColor.redComponent
        let green = rgbColor.greenComponent
        let blue = rgbColor.blueComponent
#else
        // Fallback，默认使用黑色
        let red = 0.0, green = 0.0, blue = 0.0
#endif
        
        let luminance = 0.299 * red + 0.587 * green + 0.114 * blue
        return luminance > threshold
    }
}

// MARK: - 平台兼容性工具
#if os(macOS)
extension NSColor {
    /// macOS的NSColor转SwiftUI Color
    var toSwiftUI: Color { Color(self) }
}
#endif
