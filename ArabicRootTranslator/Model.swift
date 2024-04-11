//
//  Model.swift
//  ArabicRootTranslator
//
//  Created by Lorenzo Brown on 4/4/24.
//

import Foundation

enum VerbForm {
    case I, II, III, IV, V, VI, VII, VIII, IX, X
}

enum VerbTense {
    case perfect, imperfect, future, perfectPassive, emphaticImperfect, imperfectPassive, indicative, subjunctive, jussive
}

enum VerbPronoun: String{
    case ana = "انا"
    case enta = "انتَ"
    case enti = "انتِ"
    
    case hua = "هو"
    case hiyya = "هي"
    case hom = "هم"
    case honna = "هنّ"

    case entuma = "انتما"
    case entuma2 = "انتما (مو)"
    case homaa = "هما"
    case homaa2 = "هما(مو)"
    
    case nahnu = "نحنُ"
    case entom = "انتم"
    case entoa = "انتنَّ"
}

enum ArabicLetter: String {
    case alef = "ا"
    case baa = "ب"
    case taa = "ت"
    case thaa = "ث"
    case jiim = "ج"
    case Haa = "ح"
    case khaa = "خ"
    case dal = "د"
    case dhal = "ذ"
    case raa = "ر"
    case zay = "ز"
    case siin = "س"
    case shiin = "ش"
    case Saad = "ص"
    case Dhad = "ض"
    case Taa = "ط"
    case Dhaa = "ظ"
    case ein = "ع"
    case ghain = "غ"
    case faa = "ف"
    case qaaf = "ق"
    case kaaf = "ك"
    case laam = "ل"
    case miim = "م"
    case nun = "ن"
    case waw = "و"
    case yaa = "ي"
}

struct Translation {
    var englishPhrase: String
    var arabicPhrase : String
    var upVotes: Int = 0
    var downVotes: Int = 0
}

struct RootCollection {
    var root1: ArabicLetter
    var root2: ArabicLetter
    var root3: ArabicLetter
    var forms: [VerbForm: VerbConjugation]
}

struct VerbConjugation {
    var formTranslation: String
    var tenses: [VerbTense: String]
    var pronouns: [VerbPronoun: String]?
    var translations: [VerbPronoun: [Translation]]?
}

func isValidVerbConjugation(_ conjugation: RootCollection)->Bool {
    if conjugation.root1.rawValue == conjugation.root2.rawValue && conjugation.root2.rawValue == conjugation.root3.rawValue {
        return false
    }
    return true
}

func isValidVerbForm(_ conjugation: VerbConjugation, form: VerbForm)->Bool {
    return true
}

func getTranslationsForVerbForm( form: VerbForm) -> [String] {
    return []
}

