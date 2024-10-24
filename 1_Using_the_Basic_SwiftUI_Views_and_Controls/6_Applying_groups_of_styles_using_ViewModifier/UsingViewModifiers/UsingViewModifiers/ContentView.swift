//
//  ContentView.swift
//  UsingViewModifiers
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 直接使用modifier方法
//            Text("Perfect")
//                .modifier(BackgroundStyle(bgColor: .blue))

            // 或者拓展一个View方法，内部使用modifier方法，这种更方便（推荐）
            Text("Perfect")
                .backgroundStyle(color: Color.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

/*
    创建自己的自定义修饰符
 */
struct BackgroundStyle: ViewModifier {
    var bgColor: Color
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundStyle(.black)
            .padding()
            .background(bgColor)
            .cornerRadius(20)
    }
}

extension View {
    func backgroundStyle(color: Color) -> some View {
        modifier(BackgroundStyle(bgColor: color))
    }
}
