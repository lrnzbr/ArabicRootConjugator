//
//  ContentView.swift
//  ArabicRootTranslator
//
//  Created by Lorenzo Brown on 11/28/22.
//

import SwiftUI
struct RootConjugation {
    var letter1: String
    var letter2: String
    var letter3: String
}
struct ContentView: View {
    var arabicLetters = ["ا" , "ب" , "ت" , "ث" , "ج" , "ح" , "خ", "د" , "ذ" , "ر", "ز", "س", "ش", "ص", "ض", "ع" , "غ" , "ف" , "ق" , "ك" , "ل" , "م", "ن" , "ه" , "و", "ي"]
    @State private var selectedLetter1 = ""
    @State private var selectedLetter2 = ""
    @State private var selectedLetter3 = ""
    
//    func conjugateRoots() {
//        let rootConj = RootConjugation(letter1: selectedLetter1, letter2: selectedLetter2, letter3: selectedLetter3)
//        
//    }
    
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    ArabicLetterView(letter: selectedLetter3)
                    
                    ArabicLetterView(letter: selectedLetter2)
                    ArabicLetterView(letter: selectedLetter1)
                }.padding()
                HStack {
                    Picker("Third Letter", selection: $selectedLetter3) {
                        ForEach(arabicLetters, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    Picker("Second Letter", selection: $selectedLetter2) {
                        ForEach(arabicLetters, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    Picker("First Letter", selection: $selectedLetter1) {
                        ForEach(arabicLetters, id: \.self) {
                            Text($0)
                        }
                    }
                }
                NavigationLink(destination: FormsMainView(rootLetters:  RootConjugation(letter1: selectedLetter1, letter2: selectedLetter2, letter3: selectedLetter3))){
                    Text("Conjugate")
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
