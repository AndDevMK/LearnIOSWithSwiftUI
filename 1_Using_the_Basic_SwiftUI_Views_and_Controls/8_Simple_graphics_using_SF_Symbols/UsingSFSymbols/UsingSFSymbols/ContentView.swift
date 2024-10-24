//
//  ContentView.swift
//  UsingSFSymbols
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var wifiSelection = 0

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "c")
                Image(systemName: "o")
                Image(systemName: "o")
                Image(systemName: "k")
            }
            /*
                定义了多种设计变体，例如封闭、填充和斜杠。这些不同的变体可用于传达不同的信息，例如，Wi-Fi 符号上的斜线变体可让用户知道 Wi-Fi 是否不可用
             */
            .symbolVariant(.fill.circle)
            // 可以接受3个参数，表示primary, secondary, and tertiary colors.
            /*
                 Some symbols may have all three levels of colors, or only primary and
                 secondary, or primary and tertiary. For symbols without all three levels, only the ones that pertain
                 to them are applied to the symbol. For example, a tertiary color applied to an SF Symbol with only
                 primary and secondary levels will have no effect on the symbol.
             */
            .foregroundStyle(.yellow, .blue)
            .font(.title)

            HStack {
                // 除了上面symbolVariant写法，变体也可以写在systemName
                Image(systemName: "b.circle.fill")
                Image(systemName: "o.circle.fill")
                    .foregroundStyle(.red)
                Image(systemName: "o.circle.fill")
                    .imageScale(.large)
                Image(systemName: "k.circle.fill")
                    .accessibility(identifier: "Letter K")
            }
            .foregroundStyle(.blue)
            .font(.title)
            .padding()

            HStack {
                Image(systemName: "allergens")
                Image(systemName: "ladybug")
            }
            .symbolVariant(.fill)
            // 多色渲染模式
            .symbolRenderingMode(.multicolor)
            .font(.largeTitle)

            HStack {
                Picker("Pick One", selection: $wifiSelection) {
                    Text("No Wifi").tag(0)
                    Text("Searching").tag(1)
                    Text("Wifi On").tag(2)
                }
                .pickerStyle(.segmented)
                .frame(width: 240)
                .padding(.horizontal)

                Group {
                    switch wifiSelection {
                    case 0:
                        Image(systemName: "wifi")
                            .symbolVariant(.slash)
                    case 1:
                        Image(systemName: "wifi")
                            // 添加动画
                            .symbolEffect(.variableColor.iterative.reversing)
                    default:
                        Image(systemName: "wifi")
                            .foregroundStyle(.blue)
                    }
                }
            }
            .foregroundStyle(.secondary)
            .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
