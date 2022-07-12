//
//  ContentView.swift
//  WeSplit
//
//  Created by Robert Barney on 2022-06-08.
//

import SwiftUI

struct ContentView: View {
    
    let students = ["Apple", "Orange", "Grape"]
    @State private var selectedFruit = "Apple"
    
    var body: some View {
        
        NavigationView {
            Form {
                Picker("Select your fruit", selection: $selectedFruit) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
