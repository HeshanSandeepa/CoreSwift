//
//  ContentView.swift
//  WeSplit
//
//  Created by Robert Barney on 2022-06-08.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var total: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        return  checkAmount + tipValue
    }
    
    var totalPerPerson: Double {
        return total / Double(numberOfPeople + 2 )
    }
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Amount",
                              value: $checkAmount,
                              format: .currency(code: Locale.current.currencyCode
                                                ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    
                    Picker("Number of Peope", selection: $numberOfPeople) {
                        ForEach(2..<10) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Text(checkAmount,
                         format: .currency(code: Locale.current.currencyCode
                                           ?? "USD"))
                }
                Section {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave")
                }
                
                Section {
                    Text(total,
                         format: .currency(code: Locale.current.currencyCode
                                           ?? "USD"))
                }header: {
                    Text("Grand Total")
                }
                
                Section {
                    Text(totalPerPerson,
                         format: .currency(code: Locale.current.currencyCode
                                           ?? "USD"))
                } header: {
                    Text("Amount for Person")
                }
            }
            .navigationTitle("We Split")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
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
