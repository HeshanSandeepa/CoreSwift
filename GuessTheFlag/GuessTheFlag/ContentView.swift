//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Robert Barney on 2022-07-28.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack.init( spacing: 10 ) {
//            LinearGradient(gradient: Gradient(stops: [
//                .init(color: .white, location: 0.45),
//                .init(color: .black, location: 0.55),
//            ]), startPoint: .top, endPoint: .bottom)
//
//            RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
//            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
//
//        }.ignoresSafeArea()
//
//        //        ZStack {
//        //            VStack(spacing: 0) {
//        //                Color.red
//        //                Color.blue
//        //                Color.green
//        //            }
//        //
//        //            Text("Your content")
//        //                .foregroundStyle(.secondary)
//        //                .padding(50)
//        //                .background(.ultraThinMaterial)
//        //                .font(Font.title)
//        //        }
//        //        .ignoresSafeArea()
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
