//
//  ContentView.swift
//  Buttons
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 44) {
                NavigationLink("Buttons") {
                    ButtonView()
                }
                NavigationLink("EditButtons") {
                    EditButtonView()
                }
                NavigationLink("MenuButtons") {
                    MenuButtonView()
                }
                NavigationLink("PasteButtons") {
                    PasteButtonView()
                }

                NavigationLink("Details about text") {
                    Text("Very long text that should not be displayed in a single line because it is not good design")
                        .padding()
                        .navigationTitle(Text("Detail"))
                }
            }.navigationTitle(Text("Main View"))
        }
    }
}

#Preview {
    ContentView()
}
