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
            NavigationStack {
                Grid {
                    GridRow {
                        FormCell(formName: "Form I", conjugation: rootLetters.letter1+rootLetters.letter2+rootLetters.letter3)
                        FormCell(formName: "Form II", conjugation: rootLetters.letter1+rootLetters.letter2+"ّ"+rootLetters.letter3)
                    }
                    GridRow {
                        FormCell(formName: "Form III", conjugation: rootLetters.letter1+"ا"+rootLetters.letter2 + rootLetters.letter3)
                        
                        
                        FormCell(formName: "Form IV", conjugation: "أ" + rootLetters.letter1+rootLetters.letter2 + rootLetters.letter3)
                        
                    }
                    
                    GridRow {
                        FormCell(formName: "Form V", conjugation: "ت" + rootLetters.letter1+rootLetters.letter2+"ّ" + rootLetters.letter3)
                        
                        
                        FormCell(formName: "Form VI", conjugation: "ت" + rootLetters.letter1+"ا"+rootLetters.letter2 + rootLetters.letter3)
                    }
                    
                    GridRow{
                        FormCell(formName: "Form VII", conjugation: "ان" + rootLetters.letter1 + rootLetters.letter2 + rootLetters.letter3)
                        
                        FormCell(formName: "Form VIII", conjugation: "ا" + rootLetters.letter1+"ت" + rootLetters.letter2 + rootLetters.letter3)
                    }
                    
                    GridRow {
                        FormCell(formName: "Form IX", conjugation: "ا" + rootLetters.letter1 + "ْ" + rootLetters.letter2 + rootLetters.letter3+"ّ")
                        
                        FormCell(formName: "Form X", conjugation: "است" + rootLetters.letter1 + rootLetters.letter2 + rootLetters.letter3+"ّ")
                        
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


struct FormCell: View {
    var formName: String
    var conjugation: String
    var translation: String = "No translation available"
    var body: some View {
        NavigationLink(destination: VerbTensesView()) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue.gradient)
                VStack {
                    Text(formName)
                    Text(conjugation)
                    Text(translation)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                        .italic()
                }
            }.padding()
                .frame(maxHeight: 150)
               
        } .buttonStyle(.plain)
    }
}
