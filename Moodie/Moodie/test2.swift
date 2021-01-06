//
//  test2.swift
//  Moodie
//
//  Created by Yousif on 05/01/2021.
//

import SwiftUI

struct test2: View {
    @State var size = UIScreen.main.bounds.width - 100
    var body: some View {
        ZStack{
            //Color("Orange")
            LinearGradient(gradient: Gradient(colors: [Color("Orange")]), startPoint: .top, endPoint: .bottom)
            
//            Text("Hello World")
//                .padding()
//                .foregroundColor(.white)
//                .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .leading, endPoint: .trailing))
//
//            Circle()
//                .trim(from: 0, to: 0.5)
//                //.stroke(Color.red, lineWidth: 20)
//                .frame(width: size, height: size)
//                .rotationEffect(.degrees(90))
//                .foregroundColor(.white)
//            Circle()
//                //.trim(from: 0, to: 0.5)
//                //.stroke(Color.red, lineWidth: 20)
//                .frame(width: 40, height: 40)
//                .offset(x: -size/5, y: size/10)
//                .foregroundColor(.green)
            
//            Circle()
//                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round, dash: [1,80]))
//                .opacity(0.5)
//                .foregroundColor(Color.red)
//                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//            Circle()
//                .trim(from: 0.0, to: 0.1)
//                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
//                .foregroundColor(Color.red)
//                .rotationEffect(Angle(degrees: 90))
//                .animation(.linear)
                //.frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

        }
    }
}

struct test2_Previews: PreviewProvider {
    static var previews: some View {
        test2()
    }
}
