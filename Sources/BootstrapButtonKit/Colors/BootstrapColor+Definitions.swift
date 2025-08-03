//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

// 颜色值定义

extension Color {
    // 主题色
    public static let primaryBootstrap   = blue500Bootstrap
    public static let secondaryBootstrap = gray600Bootstrap
    public static let successBootstrap   = green500Bootstrap
    public static let dangerBootstrap    = red500Bootstrap
    public static let warningBootstrap   = yellow500Bootstrap
    public static let infoBootstrap      = cyan500Bootstrap
    public static let lightBootstrap     = gray100Bootstrap
    public static let darkBootstrap      = gray900Bootstrap
    public static let blackBootstrap     = Color(hex: "000000")
    public static let whiteBootstrap     = Color(hex: "ffffff")
    
    // Blue
    public static let blue100Bootstrap    = Color(hex: "cfe2ff")
    public static let blue200Bootstrap    = Color(hex: "9ec5fe")
    public static let blue300Bootstrap    = Color(hex: "6ea8fe")
    public static let blue400Bootstrap    = Color(hex: "3d8bfd")
    public static let blue500Bootstrap    = Color(hex: "0d6efd")
    public static let blue600Bootstrap    = Color(hex: "0a58ca")
    public static let blue700Bootstrap    = Color(hex: "084298")
    public static let blue800Bootstrap    = Color(hex: "052c65")
    public static let blue900Bootstrap    = Color(hex: "031633")
    
    // Indigo
    public static let indigo100Bootstrap  = Color(hex: "e0cffc")
    public static let indigo200Bootstrap  = Color(hex: "c29ffa")
    public static let indigo300Bootstrap  = Color(hex: "a370f7")
    public static let indigo400Bootstrap  = Color(hex: "8540f5")
    public static let indigo500Bootstrap  = Color(hex: "6610f2")
    public static let indigo600Bootstrap  = Color(hex: "520dc2")
    public static let indigo700Bootstrap  = Color(hex: "3d0a91")
    public static let indigo800Bootstrap  = Color(hex: "290661")
    public static let indigo900Bootstrap  = Color(hex: "140330")
    
    // Purple
    public static let purple100Bootstrap  = Color(hex: "e2d9f3")
    public static let purple200Bootstrap  = Color(hex: "c5b3e6")
    public static let purple300Bootstrap  = Color(hex: "a98eda")
    public static let purple400Bootstrap  = Color(hex: "8c68cd")
    public static let purple500Bootstrap  = Color(hex: "6f42c1")
    public static let purple600Bootstrap  = Color(hex: "59359a")
    public static let purple700Bootstrap  = Color(hex: "432874")
    public static let purple800Bootstrap  = Color(hex: "2c1a4d")
    public static let purple900Bootstrap  = Color(hex: "160d27")
    
    // Pink
    public static let pink100Bootstrap    = Color(hex: "f7d6e6")
    public static let pink200Bootstrap    = Color(hex: "efadce")
    public static let pink300Bootstrap    = Color(hex: "e685b5")
    public static let pink400Bootstrap    = Color(hex: "de5c9d")
    public static let pink500Bootstrap    = Color(hex: "d63384")
    public static let pink600Bootstrap    = Color(hex: "ab296a")
    public static let pink700Bootstrap    = Color(hex: "801f4f")
    public static let pink800Bootstrap    = Color(hex: "561435")
    public static let pink900Bootstrap    = Color(hex: "2b0a1a")
    
    // Red
    public static let red100Bootstrap     = Color(hex: "f8d7da")
    public static let red200Bootstrap     = Color(hex: "f1aeb5")
    public static let red300Bootstrap     = Color(hex: "ea868f")
    public static let red400Bootstrap     = Color(hex: "e35d6a")
    public static let red500Bootstrap     = Color(hex: "dc3545")
    public static let red600Bootstrap     = Color(hex: "b02a37")
    public static let red700Bootstrap     = Color(hex: "842029")
    public static let red800Bootstrap     = Color(hex: "58151c")
    public static let red900Bootstrap     = Color(hex: "2c0b0e")
    
    // Orange
    public static let orange100Bootstrap  = Color(hex: "ffe5d0")
    public static let orange200Bootstrap  = Color(hex: "fecba1")
    public static let orange300Bootstrap  = Color(hex: "feb272")
    public static let orange400Bootstrap  = Color(hex: "fd9843")
    public static let orange500Bootstrap  = Color(hex: "fd7e14")
    public static let orange600Bootstrap  = Color(hex: "ca6510")
    public static let orange700Bootstrap  = Color(hex: "984c0c")
    public static let orange800Bootstrap  = Color(hex: "653208")
    public static let orange900Bootstrap  = Color(hex: "331904")
    
    // Yellow
    public static let yellow100Bootstrap  = Color(hex: "fff3cd")
    public static let yellow200Bootstrap  = Color(hex: "ffe69c")
    public static let yellow300Bootstrap  = Color(hex: "ffda6a")
    public static let yellow400Bootstrap  = Color(hex: "ffcd39")
    public static let yellow500Bootstrap  = Color(hex: "ffc107")
    public static let yellow600Bootstrap  = Color(hex: "cc9a06")
    public static let yellow700Bootstrap  = Color(hex: "997404")
    public static let yellow800Bootstrap  = Color(hex: "664d03")
    public static let yellow900Bootstrap  = Color(hex: "332701")
    
    // Green
    public static let green100Bootstrap   = Color(hex: "d1e7dd")
    public static let green200Bootstrap   = Color(hex: "a3cfbb")
    public static let green300Bootstrap   = Color(hex: "75b798")
    public static let green400Bootstrap   = Color(hex: "479f76")
    public static let green500Bootstrap   = Color(hex: "198754")
    public static let green600Bootstrap   = Color(hex: "146c43")
    public static let green700Bootstrap   = Color(hex: "0f5132")
    public static let green800Bootstrap   = Color(hex: "0a3622")
    public static let green900Bootstrap   = Color(hex: "051b11")
    
    // Teal
    public static let teal100Bootstrap    = Color(hex: "d2f4ea")
    public static let teal200Bootstrap    = Color(hex: "a6e9d5")
    public static let teal300Bootstrap    = Color(hex: "79dfc1")
    public static let teal400Bootstrap    = Color(hex: "4dd4ac")
    public static let teal500Bootstrap    = Color(hex: "20c997")
    public static let teal600Bootstrap    = Color(hex: "1aa179")
    public static let teal700Bootstrap    = Color(hex: "13795b")
    public static let teal800Bootstrap    = Color(hex: "0d503c")
    public static let teal900Bootstrap    = Color(hex: "06281e")
    
    // Cyan
    public static let cyan100Bootstrap    = Color(hex: "cff4fc")
    public static let cyan200Bootstrap    = Color(hex: "9eeaf9")
    public static let cyan300Bootstrap    = Color(hex: "6edff6")
    public static let cyan400Bootstrap    = Color(hex: "3dd5f3")
    public static let cyan500Bootstrap    = Color(hex: "0dcaf0")
    public static let cyan600Bootstrap    = Color(hex: "0aa2c0")
    public static let cyan700Bootstrap    = Color(hex: "087990")
    public static let cyan800Bootstrap    = Color(hex: "055160")
    public static let cyan900Bootstrap    = Color(hex: "032830")
    
    // Gray
    public static let gray100Bootstrap    = Color(hex: "f8f9fa")
    public static let gray200Bootstrap    = Color(hex: "e9ecef")
    public static let gray300Bootstrap    = Color(hex: "dee2e6")
    public static let gray400Bootstrap    = Color(hex: "ced4da")
    public static let gray500Bootstrap    = Color(hex: "adb5bd")
    public static let gray600Bootstrap    = Color(hex: "6c757d")
    public static let gray700Bootstrap    = Color(hex: "495057")
    public static let gray800Bootstrap    = Color(hex: "343a40")
    public static let gray900Bootstrap    = Color(hex: "212529")
}

struct BootstrapColors {
    static let allColors: [String: Color] = [
        // 主题色
        "primaryBootstrap": .primaryBootstrap,
        "secondaryBootstrap": .secondaryBootstrap,
        "successBootstrap": .successBootstrap,
        "dangerBootstrap": .dangerBootstrap,
        "warningBootstrap": .warningBootstrap,
        "infoBootstrap": .infoBootstrap,
        "lightBootstrap": .lightBootstrap,
        "darkBootstrap": .darkBootstrap,
        "blackBootstrap": .blackBootstrap,
        "whiteBootstrap": .whiteBootstrap,
        
        // Blue
        "blue100Bootstrap": .blue100Bootstrap,
        "blue200Bootstrap": .blue200Bootstrap,
        "blue300Bootstrap": .blue300Bootstrap,
        "blue400Bootstrap": .blue400Bootstrap,
        "blue500Bootstrap": .blue500Bootstrap,
        "blue600Bootstrap": .blue600Bootstrap,
        "blue700Bootstrap": .blue700Bootstrap,
        "blue800Bootstrap": .blue800Bootstrap,
        "blue900Bootstrap": .blue900Bootstrap,
        
        // Indigo
        "indigo100Bootstrap": .indigo100Bootstrap,
        "indigo200Bootstrap": .indigo200Bootstrap,
        "indigo300Bootstrap": .indigo300Bootstrap,
        "indigo400Bootstrap": .indigo400Bootstrap,
        "indigo500Bootstrap": .indigo500Bootstrap,
        "indigo600Bootstrap": .indigo600Bootstrap,
        "indigo700Bootstrap": .indigo700Bootstrap,
        "indigo800Bootstrap": .indigo800Bootstrap,
        "indigo900Bootstrap": .indigo900Bootstrap,
        
        // Purple
        "purple100Bootstrap": .purple100Bootstrap,
        "purple200Bootstrap": .purple200Bootstrap,
        "purple300Bootstrap": .purple300Bootstrap,
        "purple400Bootstrap": .purple400Bootstrap,
        "purple500Bootstrap": .purple500Bootstrap,
        "purple600Bootstrap": .purple600Bootstrap,
        "purple700Bootstrap": .purple700Bootstrap,
        "purple800Bootstrap": .purple800Bootstrap,
        "purple900Bootstrap": .purple900Bootstrap,
        
        // Pink
        "pink100Bootstrap": .pink100Bootstrap,
        "pink200Bootstrap": .pink200Bootstrap,
        "pink300Bootstrap": .pink300Bootstrap,
        "pink400Bootstrap": .pink400Bootstrap,
        "pink500Bootstrap": .pink500Bootstrap,
        "pink600Bootstrap": .pink600Bootstrap,
        "pink700Bootstrap": .pink700Bootstrap,
        "pink800Bootstrap": .pink800Bootstrap,
        "pink900Bootstrap": .pink900Bootstrap,
        
        // Red
        "red100Bootstrap": .red100Bootstrap,
        "red200Bootstrap": .red200Bootstrap,
        "red300Bootstrap": .red300Bootstrap,
        "red400Bootstrap": .red400Bootstrap,
        "red500Bootstrap": .red500Bootstrap,
        "red600Bootstrap": .red600Bootstrap,
        "red700Bootstrap": .red700Bootstrap,
        "red800Bootstrap": .red800Bootstrap,
        "red900Bootstrap": .red900Bootstrap,
        
        // Orange
        "orange100Bootstrap": .orange100Bootstrap,
        "orange200Bootstrap": .orange200Bootstrap,
        "orange300Bootstrap": .orange300Bootstrap,
        "orange400Bootstrap": .orange400Bootstrap,
        "orange500Bootstrap": .orange500Bootstrap,
        "orange600Bootstrap": .orange600Bootstrap,
        "orange700Bootstrap": .orange700Bootstrap,
        "orange800Bootstrap": .orange800Bootstrap,
        "orange900Bootstrap": .orange900Bootstrap,
        
        // Yellow
        "yellow100Bootstrap": .yellow100Bootstrap,
        "yellow200Bootstrap": .yellow200Bootstrap,
        "yellow300Bootstrap": .yellow300Bootstrap,
        "yellow400Bootstrap": .yellow400Bootstrap,
        "yellow500Bootstrap": .yellow500Bootstrap,
        "yellow600Bootstrap": .yellow600Bootstrap,
        "yellow700Bootstrap": .yellow700Bootstrap,
        "yellow800Bootstrap": .yellow800Bootstrap,
        "yellow900Bootstrap": .yellow900Bootstrap,
        
        // Green
        "green100Bootstrap": .green100Bootstrap,
        "green200Bootstrap": .green200Bootstrap,
        "green300Bootstrap": .green300Bootstrap,
        "green400Bootstrap": .green400Bootstrap,
        "green500Bootstrap": .green500Bootstrap,
        "green600Bootstrap": .green600Bootstrap,
        "green700Bootstrap": .green700Bootstrap,
        "green800Bootstrap": .green800Bootstrap,
        "green900Bootstrap": .green900Bootstrap,
        
        // Teal
        "teal100Bootstrap": .teal100Bootstrap,
        "teal200Bootstrap": .teal200Bootstrap,
        "teal300Bootstrap": .teal300Bootstrap,
        "teal400Bootstrap": .teal400Bootstrap,
        "teal500Bootstrap": .teal500Bootstrap,
        "teal600Bootstrap": .teal600Bootstrap,
        "teal700Bootstrap": .teal700Bootstrap,
        "teal800Bootstrap": .teal800Bootstrap,
        "teal900Bootstrap": .teal900Bootstrap,
        
        // Cyan
        "cyan100Bootstrap": .cyan100Bootstrap,
        "cyan200Bootstrap": .cyan200Bootstrap,
        "cyan300Bootstrap": .cyan300Bootstrap,
        "cyan400Bootstrap": .cyan400Bootstrap,
        "cyan500Bootstrap": .cyan500Bootstrap,
        "cyan600Bootstrap": .cyan600Bootstrap,
        "cyan700Bootstrap": .cyan700Bootstrap,
        "cyan800Bootstrap": .cyan800Bootstrap,
        "cyan900Bootstrap": .cyan900Bootstrap,
        
        // Gray
        "gray100Bootstrap": .gray100Bootstrap,
        "gray200Bootstrap": .gray200Bootstrap,
        "gray300Bootstrap": .gray300Bootstrap,
        "gray400Bootstrap": .gray400Bootstrap,
        "gray500Bootstrap": .gray500Bootstrap,
        "gray600Bootstrap": .gray600Bootstrap,
        "gray700Bootstrap": .gray700Bootstrap,
        "gray800Bootstrap": .gray800Bootstrap,
        "gray900Bootstrap": .gray900Bootstrap
    ]
}

extension BootstrapColor {
    public var backgroundColor: Color {
        if let themeColor = themeColor {
            return themeColor.defaultColor
        } else if let shadedColor = shadedColor, let shade = shade {
            return shadedColor.color(for: shade)
        }
        return .blue500Bootstrap // 默认颜色
    }
    
    public var textColor: Color {
        backgroundColor.isLight() ? .gray900Bootstrap : .white
    }
    
    public var borderColor: Color {
        backgroundColor
    }
}

extension BootstrapColor.ThemeColor {
    var defaultColor: Color {
        switch self {
        case .primary: return .blue500Bootstrap
        case .secondary: return .gray600Bootstrap
        case .success: return .green500Bootstrap
        case .danger: return .red500Bootstrap
        case .warning: return .yellow500Bootstrap
        case .info: return .cyan500Bootstrap
        case .light: return .gray100Bootstrap
        case .dark: return .gray900Bootstrap
        case .black: return .blackBootstrap
        case .white: return .whiteBootstrap
        }
    }
}

extension BootstrapColor.ShadedColor {
    func color(for shade: BootstrapColor.Shade) -> Color {
        let prefix = self.rawValue.lowercased()
        let suffix = "\(shade.rawValue)Bootstrap"
        let colorName = prefix + suffix
        
        guard let color = BootstrapColors.allColors[colorName] else {
            return Color(prefix + "500Bootstrap")
        }
        return color
    }
}
