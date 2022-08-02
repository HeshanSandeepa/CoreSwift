//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Robert Barney on 2022-07-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack(alignment: .center, spacing: 25) {
                Spacer()
                Text("H1")
                Spacer()
                Text("H2")
                Spacer()
                Text("H2")
                Spacer()
            }
            Spacer()
            HStack(alignment: .center, spacing: 25) {
                Spacer()
                Text("H1")
                Spacer()
                Text("H2")
                Spacer()
                Text("H2")
                Spacer()
            }
            Spacer()
            HStack(alignment: .center, spacing: 25) {
                Spacer()
                Text("H1")
                Spacer()
                Text("H2")
                Spacer()
                Text("H2")
                Spacer()
            }
            VStack(alignment: .center, spacing: 40) {
                Spacer()
                Text("V1")
                Spacer()
                Text("V2")
                Spacer()
            }
            ZStack(alignment: .center) {
                Spacer()
                Text("V1   ")
                Spacer()
                Text("   V2")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
