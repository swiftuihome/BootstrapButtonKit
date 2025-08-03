//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

// MARK: - 颜色值命名空间
extension Color {
    /// 主题色命名空间
    enum Theme {
        static let black = Color(hex: "000000")
        static let white = Color(hex: "FFFFFF")
    }
    
    /// 彩色命名空间
    enum Shaded {
        // Blue
        static let blue100 = Color(hex: "CFE2FF")
        static let blue200 = Color(hex: "9EC5FE")
        static let blue300 = Color(hex: "6EA8FE")
        static let blue400 = Color(hex: "3D8BFD")
        static let blue500 = Color(hex: "0D6EFD")
        static let blue600 = Color(hex: "0A58CA")
        static let blue700 = Color(hex: "084298")
        static let blue800 = Color(hex: "052C65")
        static let blue900 = Color(hex: "031633")
        
        // Indigo
        static let indigo100  = Color(hex: "e0cffc")
        static let indigo200  = Color(hex: "c29ffa")
        static let indigo300  = Color(hex: "a370f7")
        static let indigo400  = Color(hex: "8540f5")
        static let indigo500  = Color(hex: "6610f2")
        static let indigo600  = Color(hex: "520dc2")
        static let indigo700  = Color(hex: "3d0a91")
        static let indigo800  = Color(hex: "290661")
        static let indigo900  = Color(hex: "140330")
        
        // Purple
        static let purple100  = Color(hex: "e2d9f3")
        static let purple200  = Color(hex: "c5b3e6")
        static let purple300  = Color(hex: "a98eda")
        static let purple400  = Color(hex: "8c68cd")
        static let purple500  = Color(hex: "6f42c1")
        static let purple600  = Color(hex: "59359a")
        static let purple700  = Color(hex: "432874")
        static let purple800  = Color(hex: "2c1a4d")
        static let purple900  = Color(hex: "160d27")
        
        // Pink
        static let pink100 = Color(hex: "f7d6e6")
        static let pink200 = Color(hex: "efadce")
        static let pink300 = Color(hex: "e685b5")
        static let pink400 = Color(hex: "de5c9d")
        static let pink500 = Color(hex: "d63384")
        static let pink600 = Color(hex: "ab296a")
        static let pink700 = Color(hex: "801f4f")
        static let pink800 = Color(hex: "561435")
        static let pink900 = Color(hex: "2b0a1a")
        
        // Red
        static let red100 = Color(hex: "f8d7da")
        static let red200 = Color(hex: "f1aeb5")
        static let red300 = Color(hex: "ea868f")
        static let red400 = Color(hex: "e35d6a")
        static let red500 = Color(hex: "dc3545")
        static let red600 = Color(hex: "b02a37")
        static let red700 = Color(hex: "842029")
        static let red800 = Color(hex: "58151c")
        static let red900 = Color(hex: "2c0b0e")
        
        // Orange
        static let orange100 = Color(hex: "ffe5d0")
        static let orange200 = Color(hex: "fecba1")
        static let orange300 = Color(hex: "feb272")
        static let orange400 = Color(hex: "fd9843")
        static let orange500 = Color(hex: "fd7e14")
        static let orange600 = Color(hex: "ca6510")
        static let orange700 = Color(hex: "984c0c")
        static let orange800 = Color(hex: "653208")
        static let orange900 = Color(hex: "331904")
        
        // Yellow
        static let yellow100 = Color(hex: "fff3cd")
        static let yellow200 = Color(hex: "ffe69c")
        static let yellow300 = Color(hex: "ffda6a")
        static let yellow400 = Color(hex: "ffcd39")
        static let yellow500 = Color(hex: "ffc107")
        static let yellow600 = Color(hex: "cc9a06")
        static let yellow700 = Color(hex: "997404")
        static let yellow800 = Color(hex: "664d03")
        static let yellow900 = Color(hex: "332701")
        
        // Green
        static let green100 = Color(hex: "d1e7dd")
        static let green200 = Color(hex: "a3cfbb")
        static let green300 = Color(hex: "75b798")
        static let green400 = Color(hex: "479f76")
        static let green500 = Color(hex: "198754")
        static let green600 = Color(hex: "146c43")
        static let green700 = Color(hex: "0f5132")
        static let green800 = Color(hex: "0a3622")
        static let green900 = Color(hex: "051b11")
        
        // Teal
        static let teal100 = Color(hex: "d2f4ea")
        static let teal200 = Color(hex: "a6e9d5")
        static let teal300 = Color(hex: "79dfc1")
        static let teal400 = Color(hex: "4dd4ac")
        static let teal500 = Color(hex: "20c997")
        static let teal600 = Color(hex: "1aa179")
        static let teal700 = Color(hex: "13795b")
        static let teal800 = Color(hex: "0d503c")
        static let teal900 = Color(hex: "06281e")
        
        // Cyan
        static let cyan100 = Color(hex: "cff4fc")
        static let cyan200 = Color(hex: "9eeaf9")
        static let cyan300 = Color(hex: "6edff6")
        static let cyan400 = Color(hex: "3dd5f3")
        static let cyan500 = Color(hex: "0dcaf0")
        static let cyan600 = Color(hex: "0aa2c0")
        static let cyan700 = Color(hex: "087990")
        static let cyan800 = Color(hex: "055160")
        static let cyan900 = Color(hex: "032830")
        
        // Gray
        static let gray100 = Color(hex: "f8f9fa")
        static let gray200 = Color(hex: "e9ecef")
        static let gray300 = Color(hex: "dee2e6")
        static let gray400 = Color(hex: "ced4da")
        static let gray500 = Color(hex: "adb5bd")
        static let gray600 = Color(hex: "6c757d")
        static let gray700 = Color(hex: "495057")
        static let gray800 = Color(hex: "343a40")
        static let gray900 = Color(hex: "212529")
    }
}

// MARK: - 主题色实现
enum ThemeColors {
    static func color(for theme: BootstrapColor.ThemeColor) -> Color {
        switch theme {
        case .primary:   return .Shaded.blue500
        case .secondary: return .Shaded.gray600
        case .success:   return .Shaded.green500
        case .danger:    return .Shaded.red500
        case .warning:   return .Shaded.yellow500
        case .info:      return .Shaded.cyan500
        case .light:     return .Shaded.gray100
        case .dark:      return .Shaded.gray900
        case .black:     return .Theme.black
        case .white:     return .Theme.white
        }
    }
}

// MARK: - 彩色实现
enum ShadedColors {
    static func color(for color: BootstrapColor.ShadedColor,
                      shade: BootstrapColor.Shade) -> Color {
        switch (color, shade) {
            // Blue
        case (.blue, .s100): return .Shaded.blue100
        case (.blue, .s200): return .Shaded.blue200
        case (.blue, .s300): return .Shaded.blue300
        case (.blue, .s400): return .Shaded.blue400
        case (.blue, .s500): return .Shaded.blue500
        case (.blue, .s600): return .Shaded.blue600
        case (.blue, .s700): return .Shaded.blue700
        case (.blue, .s800): return .Shaded.blue800
        case (.blue, .s900): return .Shaded.blue900
            
            // Indigo
        case (.indigo, .s100): return .Shaded.indigo100
        case (.indigo, .s200): return .Shaded.indigo200
        case (.indigo, .s300): return .Shaded.indigo300
        case (.indigo, .s400): return .Shaded.indigo400
        case (.indigo, .s500): return .Shaded.indigo500
        case (.indigo, .s600): return .Shaded.indigo600
        case (.indigo, .s700): return .Shaded.indigo700
        case (.indigo, .s800): return .Shaded.indigo800
        case (.indigo, .s900): return .Shaded.indigo900
            
            // Purple
        case (.purple, .s100): return .Shaded.purple100
        case (.purple, .s200): return .Shaded.purple200
        case (.purple, .s300): return .Shaded.purple300
        case (.purple, .s400): return .Shaded.purple400
        case (.purple, .s500): return .Shaded.purple500
        case (.purple, .s600): return .Shaded.purple600
        case (.purple, .s700): return .Shaded.purple700
        case (.purple, .s800): return .Shaded.purple800
        case (.purple, .s900): return .Shaded.purple900
            
            // Pink
        case (.pink, .s100): return .Shaded.pink100
        case (.pink, .s200): return .Shaded.pink200
        case (.pink, .s300): return .Shaded.pink300
        case (.pink, .s400): return .Shaded.pink400
        case (.pink, .s500): return .Shaded.pink500
        case (.pink, .s600): return .Shaded.pink600
        case (.pink, .s700): return .Shaded.pink700
        case (.pink, .s800): return .Shaded.pink800
        case (.pink, .s900): return .Shaded.pink900
            
            // Red
        case (.red, .s100): return .Shaded.red100
        case (.red, .s200): return .Shaded.red200
        case (.red, .s300): return .Shaded.red300
        case (.red, .s400): return .Shaded.red400
        case (.red, .s500): return .Shaded.red500
        case (.red, .s600): return .Shaded.red600
        case (.red, .s700): return .Shaded.red700
        case (.red, .s800): return .Shaded.red800
        case (.red, .s900): return .Shaded.red900
            
            // Orange
        case (.orange, .s100): return .Shaded.orange100
        case (.orange, .s200): return .Shaded.orange200
        case (.orange, .s300): return .Shaded.orange300
        case (.orange, .s400): return .Shaded.orange400
        case (.orange, .s500): return .Shaded.orange500
        case (.orange, .s600): return .Shaded.orange600
        case (.orange, .s700): return .Shaded.orange700
        case (.orange, .s800): return .Shaded.orange800
        case (.orange, .s900): return .Shaded.orange900
            
            // Yellow
        case (.yellow, .s100): return .Shaded.yellow100
        case (.yellow, .s200): return .Shaded.yellow200
        case (.yellow, .s300): return .Shaded.yellow300
        case (.yellow, .s400): return .Shaded.yellow400
        case (.yellow, .s500): return .Shaded.yellow500
        case (.yellow, .s600): return .Shaded.yellow600
        case (.yellow, .s700): return .Shaded.yellow700
        case (.yellow, .s800): return .Shaded.yellow800
        case (.yellow, .s900): return .Shaded.yellow900
            
            // Green
        case (.green, .s100): return .Shaded.green100
        case (.green, .s200): return .Shaded.green200
        case (.green, .s300): return .Shaded.green300
        case (.green, .s400): return .Shaded.green400
        case (.green, .s500): return .Shaded.green500
        case (.green, .s600): return .Shaded.green600
        case (.green, .s700): return .Shaded.green700
        case (.green, .s800): return .Shaded.green800
        case (.green, .s900): return .Shaded.green900
            
            // Teal
        case (.teal, .s100): return .Shaded.teal100
        case (.teal, .s200): return .Shaded.teal200
        case (.teal, .s300): return .Shaded.teal300
        case (.teal, .s400): return .Shaded.teal400
        case (.teal, .s500): return .Shaded.teal500
        case (.teal, .s600): return .Shaded.teal600
        case (.teal, .s700): return .Shaded.teal700
        case (.teal, .s800): return .Shaded.teal800
        case (.teal, .s900): return .Shaded.teal900
            
            // Cyan
        case (.cyan, .s100): return .Shaded.cyan100
        case (.cyan, .s200): return .Shaded.cyan200
        case (.cyan, .s300): return .Shaded.cyan300
        case (.cyan, .s400): return .Shaded.cyan400
        case (.cyan, .s500): return .Shaded.cyan500
        case (.cyan, .s600): return .Shaded.cyan600
        case (.cyan, .s700): return .Shaded.cyan700
        case (.cyan, .s800): return .Shaded.cyan800
        case (.cyan, .s900): return .Shaded.cyan900
            
            // Gray
        case (.gray, .s100): return .Shaded.gray100
        case (.gray, .s200): return .Shaded.gray200
        case (.gray, .s300): return .Shaded.gray300
        case (.gray, .s400): return .Shaded.gray400
        case (.gray, .s500): return .Shaded.gray500
        case (.gray, .s600): return .Shaded.gray600
        case (.gray, .s700): return .Shaded.gray700
        case (.gray, .s800): return .Shaded.gray800
        case (.gray, .s900): return .Shaded.gray900
        }
    }
}
