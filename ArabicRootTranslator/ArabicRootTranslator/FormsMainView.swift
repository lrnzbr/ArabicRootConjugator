//
//  FormsMainView.swift
//  ArabicRootTranslator
//
//  Created by Lorenzo Brown on 8/28/23.
//

import SwiftUI

struct FormsMainView: View {
    var rootLetters: RootConjugation
    var body: some View {
        VStack {
            Text(rootLetters.letter1+rootLetters.letter2+rootLetters.letter3)
            HStack {
                VStack {
                    VStack{
                        Text("Form I")
                        Text(rootLetters.letter1+rootLetters.letter2+rootLetters.letter3)
                    }
                    VStack{
                        Text("Form II")
                        Text(rootLetters.letter1+rootLetters.letter2+"ّ"+rootLetters.letter3)
                    }
                    VStack{
                        Text("Form III")
                        Text(rootLetters.letter1+"ا"+rootLetters.letter2 + rootLetters.letter3)
                    }
                    VStack{
                        Text("Form IV")
                        Text("أ" + rootLetters.letter1+rootLetters.letter2 + rootLetters.letter3)
                    }
                    VStack{
                        Text("Form V")
                        Text("ت" + rootLetters.letter1+rootLetters.letter2+"ّ" + rootLetters.letter3)
                    }
                    
                }
                VStack {
                    VStack{
                        Text("Form VI")
                        Text("ت" + rootLetters.letter1+"ا"+rootLetters.letter2 + rootLetters.letter3)
                    }
                    
                    VStack{
                        Text("Form VII")
                        Text("ان" + rootLetters.letter1 + rootLetters.letter2 + rootLetters.letter3)
                    }
                    VStack{
                        Text("Form VIII")
                        Text("ا" + rootLetters.letter1+"ت" + rootLetters.letter2 + rootLetters.letter3)
                    }
                    VStack{
                        Text("Form IX")
                        Text("ا" + rootLetters.letter1 + "ْ" + rootLetters.letter2 + rootLetters.letter3+"ّ")
                        
                    }
                    
                    VStack{
                        Text("Form X")
                        Text("است" + rootLetters.letter1 + rootLetters.letter2 + rootLetters.letter3+"ّ")
                        
                    }
                    
                    
                    
                }
            }
            
        }
    }
}

struct FormsMainView_Previews: PreviewProvider {
    static var previews: some View {
        FormsMainView(rootLetters: RootConjugation(letter1: "ك", letter2: "ت", letter3: "ب"))
    }
}
