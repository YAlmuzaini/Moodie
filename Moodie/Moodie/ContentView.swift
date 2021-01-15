//
//  ContentView.swift
//  Moodie
//
//  Created by Yousif on 05/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var point: String = "Pistachio"
    @State var point2: String = "Zomp"
    @State var dotPlace: Double = 190
    @State var initPoint: Int = 5
    @State var emotions: String = "Ok"
    @State var myImage: String = "ok"
    @State var movedOrNot: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color("\(point)"), Color("\(point2)")]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    Text("Hey Yousif,")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .italic()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    Text("How are you feeling today?")
                        .font(.largeTitle)
                        .italic()
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    Spacer()
                    ZStack {
                        arch(dotPlace: $dotPlace, initPoint: $initPoint, myImage: $myImage, emotions: $emotions, colorFeeling: $point, colorFeeling2: $point2, movedOrNot: $movedOrNot, Images: emoji[0])
                            .padding()
                        ImageMoodie(myImage: $myImage, initPoint: $initPoint, colorFeeling: $point, colorFeeling2: $point2, dotPlace: $dotPlace, emotions: $emotions, movedOrNot: $movedOrNot, Images: emoji[0])
                    }
                    Text("\(emotions)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .italic()
                    Spacer()
                    HStack{
                        if(movedOrNot == false){
                            Image("22")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 80, height: 80, alignment: .center)
                            Text("Swipe up and down to choose your mood")
                                .bold()
                        }
                        else {
                            NavigationLink(
                                destination: RecommendationView(),
                                label: {
                                    Text("LETS GO!")
                                        .font(.title3)
                                        .bold()
                                        .frame(width: 250, height: 75)
                                        .foregroundColor(Color("\(point)"))
                                        .background(Color(.white))
                                        .cornerRadius(30)
                                        .padding()
                                })
                        }
                    }
                    .navigationBarTitle("", displayMode: .inline)
                    .navigationBarHidden(true)
                }
                .foregroundColor(.white)
                .padding()
            }
        }
    }
}

struct arch: View {
    @Binding var dotPlace: Double
    @Binding var initPoint: Int
    @Binding var myImage: String
    @Binding var emotions: String
    @Binding var colorFeeling: String
    @Binding var colorFeeling2: String
    @Binding var movedOrNot: Bool
    let Images: Emojis
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: 0.5)
                .stroke(style: StrokeStyle(lineWidth: 40.0, lineCap: .round, lineJoin: .round, dash: [1,70]))
                .rotationEffect(.degrees(90))
                .opacity(0.5)
                .foregroundColor(Color("gray-ish"))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                if(dotPlace == 265){
                    dotPlace = 90
                    initPoint = 1
                    myImage = Images.emojiImage[initPoint]
                    emotions = Images.emojiTitle[initPoint]
                    colorFeeling = Images.emojiBackgroundColor[initPoint]
                    colorFeeling2 = Images.emojiBackgroundColor[initPoint+1]
                    movedOrNot = true
                } else {
                    dotPlace += 25
                    initPoint += 1
                    myImage = Images.emojiImage[initPoint]
                    emotions = Images.emojiTitle[initPoint]
                    colorFeeling = Images.emojiBackgroundColor[initPoint]
                    colorFeeling2 = Images.emojiBackgroundColor[initPoint+1]
                    movedOrNot = true
                }
            }, label: {
                Circle()
                    .trim(from: 0.0, to: 0.001)
                    .stroke(style: StrokeStyle(lineWidth: 40.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color("White-ish"))
                    .opacity(0.9)
                    .rotationEffect(Angle(degrees: dotPlace))
                    .animation(.linear)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            })
        }
    }
}

struct ImageMoodie: View {
    @State private var offset = CGSize.zero
    @Binding var myImage: String
    @Binding var initPoint: Int
    @Binding var colorFeeling: String
    @Binding var colorFeeling2: String
    @Binding var dotPlace: Double
    @Binding var emotions: String
    @Binding var movedOrNot: Bool
    let Images: Emojis
    
    var body: some View {
        
        VStack {
            Image(myImage)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 250, height: 250, alignment: .center)
                .shadow(radius: 10)
                .rotationEffect(.degrees(Double(offset.height / 5)))
                .offset(x: 0, y: offset.height * 5)
                .opacity(2 - Double(abs(offset.height / 50)))
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            self.offset = gesture.translation
                        }
                        .onEnded { _ in
                            if self.offset.height > 100 {
                                if initPoint == 8 {
                                    initPoint = 1
                                    myImage = Images.emojiImage[initPoint]
                                    colorFeeling = Images.emojiBackgroundColor[initPoint]
                                    colorFeeling2 = Images.emojiBackgroundColor[initPoint+1]
                                    dotPlace = 90
                                    emotions = Images.emojiTitle[initPoint]
                                    movedOrNot = true
                                } else {
                                    initPoint += 1
                                    myImage = Images.emojiImage[initPoint]
                                    colorFeeling = Images.emojiBackgroundColor[initPoint]
                                    colorFeeling2 = Images.emojiBackgroundColor[initPoint+1]
                                    dotPlace += 25
                                    emotions = Images.emojiTitle[initPoint]
                                    movedOrNot = true
                                }
                                self.offset = .zero
                                
                            } else {
                                if initPoint == 1 {
                                    initPoint = 8
                                    myImage = Images.emojiImage[initPoint]
                                    colorFeeling = Images.emojiBackgroundColor[initPoint]
                                    colorFeeling2 = Images.emojiBackgroundColor[initPoint+1]
                                    dotPlace = 265
                                    emotions = Images.emojiTitle[initPoint]
                                    movedOrNot = true
                                } else {
                                    initPoint -= 1
                                    myImage = Images.emojiImage[initPoint]
                                    colorFeeling = Images.emojiBackgroundColor[initPoint]
                                    colorFeeling2 = Images.emojiBackgroundColor[initPoint+1]
                                    dotPlace -= 25
                                    emotions = Images.emojiTitle[initPoint]
                                    movedOrNot = true
                                }
                                self.offset = .zero
                            }
                        }
                )
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

