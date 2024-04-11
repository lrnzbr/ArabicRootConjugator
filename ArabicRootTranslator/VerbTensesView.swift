//
//  VerbTensesView.swift
//  ArabicRootTranslator
//
//  Created by Lorenzo Brown on 4/4/24.
//

import SwiftUI

struct VerbTensesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Translations: ")
                Text("Translations go here")
                    TenseCell(tenseName: "Past (Perfect) Tense", conjugation: "", arabicTenseName: "الماضي")
        
                TenseCell(tenseName: "Present (Imperfect) Tense", conjugation:"", arabicTenseName: "المضارع")
                
                TenseCell(tenseName: "Imperative Tense", conjugation:"", arabicTenseName:"الأَمْر")
                    
                TenseCell(tenseName: "Future Tense", conjugation: "", arabicTenseName: "المستقبل")
                
                TenseCell(tenseName: "Perfect Passive", conjugation: "", arabicTenseName: "الماضي المجهول")
                
                TenseCell(tenseName: "Emphatic Imperfect", conjugation: "", arabicTenseName: "المضارع المؤكد الثقيل")
                
                TenseCell(tenseName: "Imperfect Passive", conjugation: "", arabicTenseName: "المضارع المجهول")
                TenseCell(tenseName: "Indicative", conjugation: "", arabicTenseName: "المبني للمعلوم")
                TenseCell(tenseName: "Subjunctive", conjugation: "", arabicTenseName:"المبني للمجهول")
                TenseCell(tenseName: "Jussive", conjugation: "", arabicTenseName:  "المجزوم")
                    
                }

            }
        }
    }


#Preview {
    VerbTensesView()
}


    struct TenseCell: View {
        var tenseName: String
        var conjugation: String
        var arabicTenseName: String
        var body: some View {
            NavigationLink(destination: PronounTensesView()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue.gradient)
                    VStack {
                        Text(tenseName)
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
