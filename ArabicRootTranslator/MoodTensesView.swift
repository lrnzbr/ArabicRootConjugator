//
//  MoodTensesView.swift
//  ArabicRootTranslator
//
//  Created by Lorenzo Brown on 4/4/24.
//

import SwiftUI

struct MoodTensesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                    MoodCell(moodName: "Indicative", conjugation: "", arabicTenseName: "المبني للمعلوم")
                MoodCell(moodName: "Subjunctive", conjugation: "", arabicTenseName:"المبني للمجهول")
                MoodCell(moodName: "Jussive", conjugation: "", arabicTenseName:  "المجزوم")
                }

            }
        }
    }


#Preview {
    MoodTensesView()
}


struct MoodCell: View {
    var moodName: String
    var conjugation: String
    var arabicTenseName: String
    var body: some View {
        NavigationLink(destination: Text("Next View")) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue.gradient)
                VStack {
                    Text(moodName)
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
