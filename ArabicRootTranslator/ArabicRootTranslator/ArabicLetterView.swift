//
//  ArabicLetterView.swift
//  ArabicRootTranslator
//
//  Created by Lorenzo Brown on 8/28/23.
//

import SwiftUI

struct ArabicLetterView: View {
    var letter:String
    var body: some View {
        ZStack {
            Text(letter)
                .frame(width: 25, height: 25)
        } .overlay(
            Rectangle()
                .stroke(.black, lineWidth: 5)
        )
       
    }
}

struct ArabicLetterView_Previews: PreviewProvider {
    static var previews: some View {
        ArabicLetterView(letter: "ب")
    }
}
