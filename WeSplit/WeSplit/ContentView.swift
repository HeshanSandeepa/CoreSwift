//
//  ContentView.swift
//  WeSplit
//
//  Created by Robert Barney on 2022-06-08.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    
    var body: some View {
        NavigationView {
            Button("Tap Count ; \(tapCount)", action: {
                
                tapCount += 1
                
            });
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
