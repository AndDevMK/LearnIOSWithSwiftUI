//
//  PasteButtonView.swift
//  Buttons
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

struct PasteButtonView: View {
    @State var text = String()
    var body: some View {
        VStack {
            Text("PasteButton controls how you paste in macOS but is not available in iOS. For more information, check the \"See also\" section of this recipe")
                .padding()
        }
        .navigationTitle("PasteButton")
        /*
            macOS实现参考：https://gist.github.com/sturdysturge/79c73600cfb683663c1d70f5c0778020#file-swiftuidocumentationpaste
         */
//        VStack {
//            Text(text)
//            PasteButton(supportedTypes: ["public.utf8-plain-text"], payloadAction: { array in
//                array.first!.loadDataRepresentation(forTypeIdentifier: "public.utf8-plain-text", completionHandler: {
//                    data, _ in
//
//                    guard let data = data else {
//                        return
//                    }
//                    let loadedText = String(decoding: data, as: UTF8.self)
//                    self.text = loadedText
//
//                    // This call just shows how to find print the UTI type of any type conforming to NSItemProviderWriting, "public.utf8-plain-text" in this case
//                    self.getUTITypeString(for: loadedText)
//                })
//            })
//        }
//        .frame(width: 200, height: 200)
    }

//    func getUTITypeString(for item: Any) {
//        if let item = item as? NSItemProviderWriting {
//            let provider = NSItemProvider(object: item)
//            print(provider)
//        }
//        else {
//            print("This data type cannot be used in an NSItemProvider")
//        }
//    }
}

#Preview {
    NavigationStack {
        PasteButtonView()
    }
}
