//
//  ContentView.swift
//  UsingPickers
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

/*
    使用高级选择器： Picker、Toggle、Slider、Stepper和DatePicker
 */
struct ContentView: View {
    @State private var choice = 0
    @State private var showText = false
    @State private var transitModes = ["Bike", "Car", "Bus"]
    @State private var sliderVal: Float = 0
    @State private var stepVal = 0
    @State private var gameTime = Date()

    var body: some View {
        Form {
            Section {
                Picker("Transit Modes", selection: $choice) {
                    ForEach(0 ..< transitModes.count, id: \.self) { index in
                        Text("\(transitModes[index])")
                    }
                }
                /*
                    选择器样式会根据其上级而变化。当选择器放置在Form或List中，而不是VStack或其他一些容器视图中时，选择器的默认外观可能会有所不同。可以使用.pickerStyle()修饰符覆盖样式。
                 */
                .pickerStyle(.segmented)
                Text("Current choice: \(transitModes[choice])")
            }

            Section {
                Toggle(isOn: $showText) {
                    Text("Show Text")
                }
                if showText {
                    Text("The Text toggle is on")
                }
            }

            Section {
                Slider(value: $sliderVal, in: 0 ... 10, step: 0.001)
                Text("Slider current value \(sliderVal, specifier: "%.1f")")
            }

            Section {
                Stepper("Stepper", value: $stepVal, in: 0 ... 5)
                Text("Stepper current value \(stepVal)")
            }

            Section {
                DatePicker("Please select a date", selection: $gameTime)
            }

            // 只能选择未来的日期
            Section {
                DatePicker("Please select a date", selection: $gameTime, in: Date()...)
            }
        }
    }
}

#Preview {
    ContentView()
}
