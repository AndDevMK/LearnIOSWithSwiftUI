//
//  ContentView.swift
//  FormattedText
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var password = "1234"
    @State private var someText = "initial text"

    var body: some View {
        VStack {
            Text("Hello, world")
                .fontWeight(.medium)

            SecureField("Enter a password", text: $password)
                .padding()
            Text("password entered: \(password)")
                .italic()

            TextField("Enter some text", text: $someText)
                .padding()
            Text(someText)
                .font(.largeTitle)
                .underline()

            Text("Changing text color and make it bold")
                .foregroundStyle(.blue)
                .bold()

            Text("Use kerning to change space between characters in the text")
                .kerning(7)

            Text("Changing baseline offset")
                .baselineOffset(100)

            Text("Strikethrough")
                .strikethrough()

            Text("This is a multiline text implemented in SwiftUI. The trailing modifier was added to the text. This text also implements multiple modifiers")
                .background(.yellow)
                .multilineTextAlignment(.trailing)
                .lineSpacing(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
