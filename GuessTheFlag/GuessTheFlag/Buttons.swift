//
//  ButtonsAndImages.swift
//  GuessTheFlag
//
//  Created by Robert Barney on 2022-08-09.
//

import SwiftUI


struct ButtonsView: View {
    
    var body: some View {
        
        VStack {
            Button("Delete", role: .destructive,  action:  {
                print("Deleted") }
            ).buttonStyle(.bordered)
            
            Button("Delete Two") {
                print("Deleted Two")
            }.buttonStyle(.borderedProminent)
            
            
            Button("Delete Three", action: onDeleted)
            
            Button("Delete", role: .destructive,  action:  {
                print("Deleted") }
            ).buttonStyle(.borderedProminent)
                .tint(.mint)
            
            
            Button {
                print("Custom Button")
            } label: {
                

                Text("Custom Button").padding()
                    .foregroundColor(.white)
                    .background(.red)
            }
            
            Button {
                print("Custom Button")
            } label: {
                
                Label("EDIT", systemImage: "pencil")
            }
            
        }
    }
    
    func onDeleted() {
        print("Deleted Three")
    }
}
