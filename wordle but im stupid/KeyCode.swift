//
//  KeyCode.swift
//  wordle but im stupid
//
//  Created by Jia Chen Yee on 5/2/22.
//

import Foundation

/// Get the  `UInt16` value for most* keys on the keyboard
///
/// *Excludes modifier keys like Command, Control, Option, Shift and Caps Lock
/// Function keys require Fn to be held down
enum KeyCode {
    // +--------------------------------------------------+
    // | Row 0                                            |
    // | Top most row on the keyboard, fn keys            |
    // | Use fn + key to trigger keys                     |
    // +--------------------------------------------------+
    /* | */ static let esc: UInt16 = 53                // |
    /* | */ static let f1: UInt16 = 122                // |
    /* | */ static let f2: UInt16 = 120                // |
    /* | */ static let f3: UInt16 = 99                 // |
    /* | */ static let f4: UInt16 = 118                // |
    /* | */ static let f5: UInt16 = 96                 // |
    /* | */ static let f6: UInt16 = 97                 // |
    /* | */ static let f7: UInt16 = 98                 // |
    /* | */ static let f8: UInt16 = 100                // |
    /* | */ static let f9: UInt16 = 101                // |
    /* | */ static let f10: UInt16 = 109               // |
    /* | */ static let f11: UInt16 = 103               // |
    /* | */ static let f12: UInt16 = 111               // |
    // +--------------------------------------------------+
    
    // +--------------------------------------------------+
    // | Row 1                                            |
    // | Numbers row                                      |
    // +--------------------------------------------------+
    // | Keycode for ` key                                |
    /* | */ static let backTick: UInt16 = 50           // |
    // | Keycode for ~ key                                |
    /* | */ static let tilde: UInt16 = 50              // |
    // | Keycode for 1 key                                |
    /* | */ static let one: UInt16 = 18                // |
    // | Keycode for ! key                                |
    /* | */ static let exclamation: UInt16 = 18        // |
    // | Keycode for 2 key                                |
    /* | */ static let two: UInt16 = 19                // |
    // | Keycode for @ key                                |
    /* | */ static let at: UInt16 = 19                 // |
    // | Keycode for 3 key                                |
    /* | */ static let three: UInt16 = 20              // |
    // | Keycode for # key                                |
    /* | */ static let hash: UInt16 = 20               // |
    // | Keycode for 4 key                                |
    /* | */ static let four: UInt16 = 21               // |
    // | Keycode for $ key                                |
    /* | */ static let dollar: UInt16 = 21             // |
    // | Keycode for 5 key                                |
    /* | */ static let five: UInt16 = 23               // |
    // | Keycode for % key                                |
    /* | */ static let percent: UInt16 = 23            // |
    // | Keycode for 6 key                                |
    /* | */ static let six: UInt16 = 22                // |
    // | Keycode for ^ key                                |
    /* | */ static let caret: UInt16 = 22              // |
    // | Keycode for 7 key                                |
    /* | */ static let seven: UInt16 = 26              // |
    // | Keycode for & key                                |
    /* | */ static let ambersand: UInt16 = 26          // |
    // | Keycode for 8 key                                |
    /* | */ static let eight: UInt16 = 28              // |
    // | Keycode for * key                                |
    /* | */ static let astrisk: UInt16 = 28            // |
    // | Keycode for 9 key                                |
    /* | */ static let nine: UInt16 = 25               // |
    // | Keycode for ( key                                |
    /* | */ static let openBracket: UInt16 = 25        // |
    // | Keycode for 0 key                                |
    /* | */ static let zero: UInt16 = 29               // |
    // | Keycode for ) key                                |
    /* | */ static let closeBracket: UInt16 = 29       // |
    // | Keycode for - key                                |
    /* | */ static let hyphen: UInt16 = 27             // |
    // | Keycode for _ key                                |
    /* | */ static let underscore: UInt16 = 27         // |
    // | Keycode for = key                                |
    /* | */ static let equal: UInt16 = 24              // |
    // | Keycode for + key                                |
    /* | */ static let plus: UInt16 = 24               // |
    // | Keycode for delete key                           |
    /* | */ static let delete: UInt16 = 51             // |
    // +--------------------------------------------------+
    
    // +--------------------------------------------------+
    // | Row 2                                            |
    // | First row of letters                             |
    // +--------------------------------------------------+
    // | Keycode for tab key                           // |
    /* | */ static let tab: UInt16 = 48                // |
    // | Keycode for q key                             // |
    /* | */ static let q: UInt16 = 12                  // |
    // | Keycode for w key                             // |
    /* | */ static let w: UInt16 = 13                  // |
    // | Keycode for e key                             // |
    /* | */ static let e: UInt16 = 14                  // |
    // | Keycode for r key                             // |
    /* | */ static let r: UInt16 = 15                  // |
    // | Keycode for t key                             // |
    /* | */ static let t: UInt16 = 17                  // |
    // | Keycode for y key                             // |
    /* | */ static let y: UInt16 = 16                  // |
    // | Keycode for u key                             // |
    /* | */ static let u: UInt16 = 32                  // |
    // | Keycode for i key                             // |
    /* | */ static let i: UInt16 = 34                  // |
    // | Keycode for o key                             // |
    /* | */ static let o: UInt16 = 31                  // |
    // | Keycode for p key                             // |
    /* | */ static let p: UInt16 = 35                  // |
    // | Keycode for [ key                             // |
    /* | */ static let openSquareBracket: UInt16 = 33  // |
    // | Keycode for { key                             // |
    /* | */ static let openCurlyBrace: UInt16 = 33     // |
    // | Keycode for } key                             // |
    /* | */ static let closeCurlyBrace: UInt16 = 30    // |
    // | Keycode for ] key                             // |
    /* | */ static let closeSquareBracket: UInt16 = 30 // |
    // | Keycode for \ key                             // |
    /* | */ static let backSlash: UInt16 = 42          // |
    // | Keycode for | key                             // |
    /* | */ static let verticalBar: UInt16 = 42        // |
    // +--------------------------------------------------+
    
    // +--------------------------------------------------+
    // | Row 3                                            |
    // | Second row of letters                            |
    // +--------------------------------------------------+
    // | Keycode for a key                                |
    /* | */ static let a: UInt16 = 0                   // |
    // | Keycode for s key                                |
    /* | */ static let s: UInt16 = 1                   // |
    // | Keycode for d key                                |
    /* | */ static let d: UInt16 = 2                   // |
    // | Keycode for f key                                |
    /* | */ static let f: UInt16 = 3                   // |
    // | Keycode for g key                                |
    /* | */ static let g: UInt16 = 5                   // |
    // | Keycode for h key                                |
    /* | */ static let h: UInt16 = 4                   // |
    // | Keycode for j key                                |
    /* | */ static let j: UInt16 = 38                  // |
    // | Keycode for k key                                |
    /* | */ static let k: UInt16 = 40                  // |
    // | Keycode for l key                                |
    /* | */ static let l: UInt16 = 37                  // |
    // | Keycode for ; key                                |
    /* | */ static let semicolon: UInt16 = 41          // |
    // | Keycode for : key                                |
    /* | */ static let colon: UInt16 = 41              // |
    // | Keycode for ' key                                |
    /* | */ static let apostrophe: UInt16 = 39         // |
    // | Keycode for " key                                |
    /* | */ static let quotationMark: UInt16 = 39      // |
    // | Keycode for return key                           |
    /* | */ static let returnKey: UInt16 = 36          // |
    // +--------------------------------------------------+
    
    // +--------------------------------------------------+
    // | Row 4                                            |
    // | Third and last row of letters                    |
    // +--------------------------------------------------+
    // | Keycode for z key                                |
    /* | */ static let z: UInt16 = 6                   // |
    // | Keycode for x key                                |
    /* | */ static let x: UInt16 = 7                   // |
    // | Keycode for c key                                |
    /* | */ static let c: UInt16 = 8                   // |
    // | Keycode for v key                                |
    /* | */ static let v: UInt16 = 9                   // |
    // | Keycode for b key                                |
    /* | */ static let b: UInt16 = 11                  // |
    // | Keycode for n key                                |
    /* | */ static let n: UInt16 = 45                  // |
    // | Keycode for m key                                |
    /* | */ static let m: UInt16 = 46                  // |
    // | Keycode for , key                                |
    /* | */ static let comma: UInt16 = 43              // |
    // | Keycode for < key                                |
    /* | */ static let lessThan: UInt16 = 43           // |
    // | Keycode for . key                                |
    /* | */ static let period: UInt16 = 47             // |
    // | Keycode for > key                                |
    /* | */ static let greaterThan: UInt16 = 47        // |
    // | Keycode for / key                                |
    /* | */ static let slash: UInt16 = 44              // |
    // | Keycode for ? key                                |
    /* | */ static let questionMark: UInt16 = 44       // |
    // +--------------------------------------------------+
    
    // +--------------------------------------------------+
    // | Row 5                                            |
    // | Last row on keyboard!!                           |
    // +--------------------------------------------------+
    // | Keycode for space key                            |
    /* | */ static let space: UInt16 = 49              // |
    // | Keycode for arrow <- key                         |
    /* | */ static let arrowLeft: UInt16 = 123         // |
    // | Keycode for arrow up key                         |
    /* | */ static let arrowUp: UInt16 = 126           // |
    // | Keycode for arrow down key                       |
    /* | */ static let arrowDown: UInt16 = 125         // |
    // | Keycode for arrow -> key                         |
    /* | */ static let arrowRight: UInt16 = 124        // |
    // +--------------------------------------------------+
    
    // +--------------------------------------------------+
    // | Character set                                    |
    // | To not waste 30 seconds typing out these, here.  |
    // +--------------------------------------------------+
    /* | */ static let letters = [a, b, c, d, e, f, g, // |
    /* | */                       n, h, i, j, k, l, m, // |
    /* | */                       o, p, q, r, s, t, u, // |
    /* | */                       v, w, x, y, z]       // |
    // |                                                  |
    // |                                                  |
    /* | */ static let digits = [zero, one, two,       // |
    /* | */                      three, four, five,    // |
    /* | */                      six, seven, eight,    // |
    /* | */                      nine]                 // |
    /* | */                                            // |
    /* | */                                            // |
    /* | */ static let alphaNumeric = letters + digits // |
    // +--------------------------------------------------+
    
    static func letter(for keyCode: UInt16) -> Character? {
        let lettersArray = ["a", "b", "c", "d", "e", "f", "g",
                            "n", "h", "i", "j", "k", "l", "m",
                            "o", "p", "q", "r", "s", "t", "u",
                            "v", "w", "x", "y", "z"]
        
        guard let letterIndex = Self.letters.firstIndex(of: keyCode) else { return nil }
        
        let key = lettersArray[letterIndex]
        return Character(key)
    }
}
