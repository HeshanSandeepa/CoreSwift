//
//  GuessTheFlagContentView.swift
//  SwiftUIBasic
//
//  Created by Robert Barney on 2022-08-16.
//

import SwiftUI


struct GuessTheFlagContentView: View {
    
    
    @State private var countries = ["Estonia", "France", "Germany",  "Ireland", "Italy",
                                    "Nigeria", "Poland", "Russia", "Spain", "US", "UK"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    
    @State private var shwoingScore  = false
    @State private var scoreTitle = ""
    
    
    var body: some View {
        
        ZStack {
            //            LinearGradient(gradient: Gradient(colors: [.blue, .black]),
            //                           startPoint: .top,
            //                           endPoint: .bottom)
            RadialGradient(stops: [.init(color: Color(.sRGB, red: 0.1, green: 0.2, blue: 0.45, opacity: 1.0), location: 0.3), .init(color: Color(.sRGB, red: 0.76, green: 0.15, blue: 0.26, opacity: 1.0), location: 0.3)],
                           center: .top,
                           startRadius: 200,
                           endRadius: 700)
                .ignoresSafeArea()
            
            
            VStack {
                
                Spacer()
                
                Text("Guess The Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            onFlagTapped(number)
                        } label: {
                            Image(countries[number]).renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame( maxWidth: .infinity)
                .padding(.vertical, 20)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .background(.regularMaterial)
                
                Spacer()
                
                Spacer()
                
                Text("Text Score ??")
                    .font(.title.weight(.bold))
                    .foregroundColor(.white)
                Spacer()
                
            }
            
            .padding()
            
            
        }
        .alert(scoreTitle, isPresented: $shwoingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    
    func onDeleted() {
        print("Deleted Three")
    }
    
    func onFlagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        shwoingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct GuessTheFlag_Previews: PreviewProvider {
    static var previews: some View {
        GuessTheFlagContentView()
    }
}

