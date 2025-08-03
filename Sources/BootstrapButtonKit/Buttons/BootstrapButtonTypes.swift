//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

// 按钮相关类型
public enum BootstrapButtonRounded {
    case square
    case capsule
    case custom(CGFloat? = 6)
    
    public var cornerRadius: CGFloat {
        switch self {
        case .square: return 0
        case .capsule: return .infinity
        case .custom(let radius): return radius ?? 6
        }
    }
}

public enum BootstrapButtonSize {
    case small, medium, large
    
    public var font: Font {
        switch self {
        case .small: return .system(size: 14, weight: .semibold)
        case .medium: return .system(size: 16, weight: .semibold)
        case .large: return .system(size: 18, weight: .semibold)
        }
    }
    
    public var horizontalPadding: CGFloat {
        switch self {
        case .small: return 12
        case .medium: return 16
        case .large: return 20
        }
    }
    
    public var minHeight: CGFloat {
        switch self {
        case .small: return 36
        case .medium: return 44
        case .large: return 52
        }
    }
}

public enum BootstrapButtonVariant {
    case solid, outline
}

public enum BootstrapButtonLayout {
    case compact, expanded
}
