//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

// 按钮样式
public struct BootstrapButtonStyle: ButtonStyle {
    public var tint: BootstrapColor
    public var size: BootstrapButtonSize
    public var variant: BootstrapButtonVariant
    public var layout: BootstrapButtonLayout
    public var isDisabled: Bool
    public var rounded: BootstrapButtonRounded
    
    public init(
        tint: BootstrapColor = .blue(),
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        layout: BootstrapButtonLayout = .expanded,
        isDisabled: Bool = false,
        rounded: BootstrapButtonRounded = .custom()
    ) {
        self.tint = tint
        self.size = size
        self.variant = variant
        self.layout = layout
        self.isDisabled = isDisabled
        self.rounded = rounded
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        let pressed = configuration.isPressed
        let baseOpacity = isDisabled ? 0.65 : 1.0
        
        configuration.label
            .font(size.font)
            .padding(.horizontal, size.horizontalPadding)
            .frame(
                maxWidth: layout == .expanded ? .infinity : nil,
                minHeight: size.minHeight
            )
            .background(backgroundView(isPressed: pressed))
            .overlay(overlayView)
            .foregroundColor(textColor(isPressed: pressed))
            .opacity(baseOpacity)
    }
    
    private func backgroundView(isPressed: Bool) -> some View {
        let bgColor: Color = {
            if variant == .outline {
                return isPressed ? tint.backgroundColor : Color.white.opacity(0.000000001)
            } else {
                return tint.backgroundColor.opacity(isPressed ? 0.8 : 1)
            }
        }()
        
        return RoundedRectangle(cornerRadius: rounded.cornerRadius)
            .fill(bgColor)
    }
    
    private var overlayView: some View {
        RoundedRectangle(cornerRadius: rounded.cornerRadius)
            .stroke(variant == .outline ? tint.borderColor : Color.clear, lineWidth: variant == .outline ? 1.5 : 0)
    }
    
    private func textColor(isPressed: Bool) -> Color {
        if variant == .outline {
            return isPressed ? (tint.backgroundColor.isLight() ? .black : .white) : tint.borderColor
        } else {
            return tint.textColor
        }
    }
}
