//
//  PronounTensesView.swift
//  ArabicRootTranslator
//
//  Created by Lorenzo Brown on 4/4/24.
//

import SwiftUI

struct PronounTensesView: View {
    var body: some View {
        NavigationStack {
            HStack(alignment: .top) {
                VStack {
                    Text("Singular")
                    PronounTenseCell(pronounName: "First Person Singular (I)", conjugation: "", arabicTenseName: "أنا")
                    
                    PronounTenseCell(pronounName: "Second Person Singular Masculine (You)", conjugation: "", arabicTenseName: "أنا")
                    
                    PronounTenseCell(pronounName: "Second Person Singular Feminine (You)", conjugation: "", arabicTenseName: "أنا")
                    PronounTenseCell(pronounName: "Third Person Singular Masculine (He)", conjugation: "", arabicTenseName: "أنا")
                    
                    PronounTenseCell(pronounName: "Third Person Singular Femenine (She)", conjugation: "", arabicTenseName: "أنا")
                }
                VStack {
                    Text("Dual")
                    PronounTenseCell(pronounName: "Second Person Dual Masculine (You)", conjugation: "", arabicTenseName: "أنا")
                    
                    PronounTenseCell(pronounName: "Second Person Dual Feminine (You)", conjugation: "", arabicTenseName: "أنا")
                    PronounTenseCell(pronounName: "Third Person Dual Masculine (They)", conjugation: "", arabicTenseName: "أنا")
                    PronounTenseCell(pronounName: "Third Person Dual Feminine (They)", conjugation: "", arabicTenseName: "أنا")
                    
                }
                VStack {
                    Text("Plural")
                    PronounTenseCell(pronounName: "First Person Plural (We)", conjugation: "", arabicTenseName: "نحن")
                    
                    PronounTenseCell(pronounName: "Second Person Plural Masculine (You / Y'all)", conjugation: "", arabicTenseName: "نحن")
                    
                    PronounTenseCell(pronounName: "Second Person Plural Feminine (You / Y'all)", conjugation: "", arabicTenseName: "نحن")
                }
            }
        }
    }
}

#Preview {
    PronounTensesView()
}

struct PronounTenseCell: View {
    var pronounName: String
    var conjugation: String
    var arabicTenseName: String
    var body: some View {
        NavigationLink(destination: TranslationView()) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue.gradient)
                VStack {
                    Text(pronounName)
                    Text(conjugation)
                    Text(arabicTenseName)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                        .italic()
                }
            }.padding()
                .frame(maxHeight: 150)
               
        } .buttonStyle(.plain)
    }
}
