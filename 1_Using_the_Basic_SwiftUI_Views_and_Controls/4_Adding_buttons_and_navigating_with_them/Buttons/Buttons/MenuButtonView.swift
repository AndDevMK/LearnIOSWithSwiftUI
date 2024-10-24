//
//  MenuButtonView.swift
//  Buttons
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Menu("Choose a country") {
            Button("Canada") { print("Selected Canada") }
            Button("Mexico") { print("Selected Mexico") }
            Button("USA") { print("Selected USA") }
        }
        .navigationTitle("MenuButtons")
    }
}

#Preview {
    NavigationStack {
        MenuButtonView()
    }
}
