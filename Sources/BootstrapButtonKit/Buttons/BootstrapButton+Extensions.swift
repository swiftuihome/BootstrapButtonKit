//
//  File.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

public extension View {
    func bootstrapButtonStyle(
        tint: BootstrapColor = .blue(),
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
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
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        bootstrapButtonStyle(
            tint: color,
            size: size,
            variant: variant,
            disabled: disabled,
            layout: layout,
            rounded: rounded
        )
    }
    
    // MARK: - 主题色按钮
    
    func primaryButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.primary, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func secondaryButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.secondary, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func successButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.success, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func dangerButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.danger, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func warningButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.warning, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func infoButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.info, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func lightButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.light, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func darkButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.dark, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func blackButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.black, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func whiteButtonStyle(
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.white, size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    // MARK: - 彩色按钮
    
    func blueButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.blue(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func indigoButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.indigo(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func purpleButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.purple(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func pinkButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.pink(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func redButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.red(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func orangeButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.orange(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func yellowButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.yellow(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func greenButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.green(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func tealButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.teal(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func cyanButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.cyan(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
    
    func grayButtonStyle(
        _ shade: BootstrapColor.Shade = .s500,
        size: BootstrapButtonSize = .medium,
        variant: BootstrapButtonVariant = .solid,
        disabled: Bool = false,
        layout: BootstrapButtonLayout = .expanded,
        rounded: BootstrapButtonRounded = .custom(6)
    ) -> some View {
        themedButtonStyle(.gray(shade), size: size, variant: variant, disabled: disabled, layout: layout, rounded: rounded)
    }
}
