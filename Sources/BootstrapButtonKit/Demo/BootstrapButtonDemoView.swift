//
//  BootstrapButtonDemoView.swift
//  BootstrapButtonKit
//
//  Created by devlink on 2025/8/3.
//

import SwiftUI

// 按钮使用示例
public struct BootstrapButtonDemoView: View {
    let sizes: [BootstrapButtonSize] = [.small, .medium, .large]
    let variants: [BootstrapButtonVariant] = [.solid, .outline]
    let roundedOptions: [BootstrapButtonRounded] = [.square, .capsule, .custom(12)]
    
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
                            
                            // 按色阶纵向排列
                            VStack(spacing: 10) {
                                ForEach(BootstrapColor.Shade.allCases, id: \.self) { shade in
                                    HStack {
                                        Text("\(shade.rawValue)")
                                            .font(.caption)
                                            .frame(width: 40, alignment: .leading)
                                        buttonGrid(color: .shaded(color, shade: shade))
                                    }
                                    
                                    Divider()
                                        .padding(.vertical)
                                }
                            }
                            .padding(.vertical, 8)
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
        VStack(spacing: 8) {
            // 不同尺寸
            HStack(spacing: 8) {
                ForEach(sizes, id: \.self) { size in
                    Button(action: {}) {
                        Text(size == .small ? "S" : size == .medium ? "M" : "L")
                            .frame(minWidth: 30)
                    }
                    .bootstrapButtonStyle(tint: color, size: size)
                }
            }
            
            // 不同变体
            HStack(spacing: 8) {
                ForEach(variants, id: \.self) { variant in
                    Button(action: {}) {
                        Text(variant == .solid ? "Solid" : "Outline")
                            .frame(minWidth: 60)
                    }
                    .bootstrapButtonStyle(tint: color, variant: variant)
                }
            }
            
            // 不同圆角
            HStack(spacing: 8) {
                ForEach(roundedOptions.indices, id: \.self) { index in
                    Button(action: {}) {
                        Text(index == 0 ? "Square" : index == 1 ? "Capsule" : "Rounded")
                            .frame(minWidth: 80)
                    }
                    .bootstrapButtonStyle(tint: color, rounded: roundedOptions[index])
                }
            }
        }
    }
}

#Preview {
    BootstrapButtonDemoView()
}
