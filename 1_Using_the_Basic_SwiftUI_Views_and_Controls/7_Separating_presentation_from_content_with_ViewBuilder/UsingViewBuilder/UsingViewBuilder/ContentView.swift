//
//  ContentView.swift
//  UsingViewBuilder
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BlueCircle {
                Text("some text here")
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
            }
            BlueCircle {
                Text("Another example")
            }
        }
    }
}

#Preview {
    ContentView()
}
