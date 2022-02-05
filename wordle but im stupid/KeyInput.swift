//
//  KeyInput.swift
//  wordle but im stupid
//
//  Created by Jia Chen Yee on 5/2/22.
//

import Foundation

struct KeyInput: Identifiable, Equatable {
    enum KeyKind {
        case rightHere, inWordButNotHere, notInWord
    }
    
    let date = Date() // Primary Key for KeyInput
    var id: Date { date }
    
    let char: Character
    let kind: KeyKind
}
