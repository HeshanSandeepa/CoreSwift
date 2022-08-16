//
//  GuessTheFlagContentView.swift
//  SwiftUIBasic
//
//  Created by Robert Barney on 2022-08-16.
//

import SwiftUI


struct GuessTheFlagContentView: View {
    
    
    var countries = ["Estonia", "France", "Germany",  "Ireland", "Italy", "Nigeria", "Polnad", "Russia", "Spain", "US", "UK"]
    
    var correctAnswer = Int.random(in: 0...2)
    
    
    
    
    //@State private var  showingAlert =  false
    
    var body: some View {
        
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of").foregroundColor(.white)
                    Text(countries[correctAnswer]).foregroundColor(.white)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        
                    } label: {
                        Image(countries[number]).renderingMode(.original)
                    }
                }
            }
        }
        
        
        //        VStack {
        //            Button("Delete", role: .destructive,  action:  {
        //                print("Deleted") }
        //            ).buttonStyle(.bordered)
        //
        //            Button("Delete Two") {
        //                print("Deleted Two")
        //            }.buttonStyle(.borderedProminent)
        //
        //
        //            Button("Delete Three", action: onDeleted)
        //
        //            Button("Delete", role: .destructive,  action:  {
        //                print("Deleted") }
        //            ).buttonStyle(.borderedProminent)
        //                .tint(.mint)
        //
        //
        //            Button {
        //                print("Custom Button")
        //            } label: {
        //
        //
        //                Text("Custom Button").padding()
        //                    .foregroundColor(.white)
        //                    .background(.red)
        //            }
        //
        //            Button {
        //                print("Custom Button")
        //            } label: {
        //
        //                Label("EDIT", systemImage: "pencil")
        //            }
        //
        //            Spacer()
        //
        //            Button("Alert") {
        //                showingAlert = true
        //            }
        //            .alert("This is Alert", isPresented: $showingAlert, actions: {
        //                Button("Ok", role: .cancel) {}
        //                Button("Cancel", role: .destructive) {}
        //            })
        //
        //        }
    }
    
    func onDeleted() {
        print("Deleted Three")
    }
}

struct GuessTheFlag_Previews: PreviewProvider {
    static var previews: some View {
        GuessTheFlagContentView()
    }
}

