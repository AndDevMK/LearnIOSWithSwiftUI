//
//  ContentView.swift
//  UsingImages
//
//  Created by 彭明健 on 2024/10/24.
//

import SwiftUI

/*
    注意：
    1、将Image View添加到SwiftUI会按其原始比例显示图像。图像对于设备的显示来说可能太小或太大。
    2、修饰符的添加顺序很重要。在 .resizable() 或 .aspectRatio() 修饰符之前添加 .frame() 修饰符可能会导致不同的结果。
 */
struct ContentView: View {
    var body: some View {
        VStack {
            /*
                 调的是这个构造：
                     /*
                          public init(_ resource: ImageResource)
                      */
             在iOS 17中，ImageResource和ColorResource结构被引入，向后兼容iOS 11的UIKit和iOS 13的SwiftUI。
             Xcode 15会为Asset目录中的图片和颜色自动生成ImageResource和ColorResource的实例.
             这种方法的优点是编译时检查正确的Image名称，从而消除拼写错误造成的运行时错误
             */
            Image(.dogs1)
                // 适合可用的屏幕空间，但比例会扭曲
                .resizable()
                // 修复比例扭曲问题
                .aspectRatio(contentMode: .fit)

            Image("dog-and-nature")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(.blue, lineWidth: 6))
                .shadow(radius: 10)

            /*
                调的是这个构造：
                     /*
                         public init(uiImage: UIImage)
                      */
              我们也可以使用UIImage实例来初始化ImageView。如果UIImage是使用旧代码或以编程方式生成。
              例如使用UIImage便利构造方法，它采用ImageResource实例。
             */
            Image(uiImage: UIImage(resource: .dog2))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ContentView()
}
