//
//  BootstrapButtonDemoView_V1.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

// 按钮使用示例（旧版本）
public struct BootstrapButtonDemoView_V1: View {
    let sizes: [BootstrapButtonSize] = [.small, .medium, .large]
    let variants: [BootstrapButtonVariant] = [.solid, .outline]
    let roundedOptions: [BootstrapButtonRounded] = [.square, .capsule, .custom(6)]

    public init() {}
    
    public var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // 展示主题色按钮
                Section(header: sectionHeader("Theme Colors")) {
                    ForEach(BootstrapColor.ThemeColor.allCases, id: \.self) { color in
                        VStack {
                            Text(color.description)
                                .font(.headline)
                            buttonGrid(color: .theme(color))
                        }
                    }
                }

                // 展示彩色按钮
                Section(header: sectionHeader("Shaded Colors")) {
                    ForEach(BootstrapColor.ShadedColor.allCases, id: \.self) { color in
                        VStack {
                            Text(color.description)
                                .font(.headline)

                            // 展示不同色阶
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(BootstrapColor.Shade.allCases, id: \.self) { shade in
                                        VStack {
                                            Text("\(shade.rawValue)")
                                                .font(.caption)
                                            buttonGrid(color: .shaded(color, shade: shade))
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }

    private func sectionHeader(_ title: String) -> some View {
        Text(title)
            .font(.title2.bold())
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top)
    }

    private func buttonGrid(color: BootstrapColor) -> some View {
        VStack {
            // 不同尺寸
            HStack {
                ForEach(sizes, id: \.self) { size in
                    Button(action: {}) {
                        Text(size == .small ? "S" : size == .medium ? "M" : "L")
                    }
                    .bootstrapButtonStyle(tint: color, size: size)
                }
            }

            // 不同变体
            HStack {
                ForEach(variants, id: \.self) { variant in
                    Button(action: {}) {
                        Text(variant == .solid ? "Solid" : "Outline")
                    }
                    .bootstrapButtonStyle(tint: color, variant: variant)
                }
            }

            // 不同圆角
            HStack {
                ForEach(roundedOptions.indices, id: \.self) { index in
                    Button(action: {}) {
                        Text(index == 0 ? "Square" : index == 1 ? "Capsule" : "Rounded")
                    }
                    .bootstrapButtonStyle(tint: color, rounded: roundedOptions[index])
                }
            }
        }
    }
}

#Preview {
    BootstrapButtonDemoView_V1()
        .preferredColorScheme(.dark)
}
