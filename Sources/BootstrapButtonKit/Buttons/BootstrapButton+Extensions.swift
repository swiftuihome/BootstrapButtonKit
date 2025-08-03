//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

public extension View {
    func bootstrapButtonStyle(
        tint: BootstrapColor = .blue,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(),
        disabled: Bool = false
    ) -> some View {
        buttonStyle(
            BootstrapButtonStyle(
                tint: tint,
                size: size,
                variant: variant,
                layout: layout,
                isDisabled: disabled,
                rounded: rounded
            )
        )
        .disabled(disabled)
    }
}

// 按钮扩展
public extension View {
    // MARK: - 私有辅助方法
    
    private func themedButtonStyle(
        _ color: BootstrapColor,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(),
        disabled: Bool = false
    ) -> some View {
        bootstrapButtonStyle(
            tint: color,
            size: size,
            variant: variant,
            layout: layout,
            rounded: rounded,
            disabled: disabled
        )
    }
    
    // MARK: - 主题色按钮
    
    func primaryButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.primary, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func secondaryButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.secondary, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func successButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.success, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func dangerButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.danger, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func warningButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.warning, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func infoButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.info, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func lightButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.light, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func darkButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.dark, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func blackButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.black, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func whiteButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.white, size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    // MARK: - 彩色按钮
    
    func blueButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.blue(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func indigoButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.indigo(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func purpleButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.purple(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func pinkButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.pink(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func redButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.red(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func orangeButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.orange(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func yellowButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.yellow(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func greenButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.green(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func tealButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.teal(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func cyanButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.cyan(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
    
    func grayButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom()
    ) -> some View {
        themedButtonStyle(.gray(shade), size: size, variant: variant, layout: layout, rounded: rounded, disabled: disabled)
    }
}
