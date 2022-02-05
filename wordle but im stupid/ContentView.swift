//
//  ContentView.swift
//  wordle but im stupid
//
//  Created by Jia Chen Yee on 4/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var results: [String] = []
    
    @State var keyInputs: [KeyInput] = []
    
    var body: some View {
        
        VStack {
            HStack {
                Text("**Shift** for confirmed position\n**Option** for letter not at that spot\n**No Modifiers** if the letter doesn't belong in the word\n**Delete** to delete, yeah.")
                Spacer()
            }
            
            ScrollView {
                LazyVGrid(columns: [.init(), .init(), .init(), .init(), .init()]) {
                    ForEach(keyInputs) { keyInput in
                        Text(String(keyInput.char).uppercased())
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .padding()
                            .background(
                                { () -> Color in
                                    switch keyInput.kind {
                                    case .inWordButNotHere:
                                        return Color("Yellow")
                                    case .rightHere:
                                        return Color("Green")
                                    case .notInWord:
                                        return Color("Grey")
                                    }
                                }()
                                    .aspectRatio(1, contentMode: .fill)
                            )
                    }
                }
                .background(
                    KeyAwareView { event in
                        guard event.keyCode != KeyCode.delete else {
                            if !keyInputs.isEmpty {
                                keyInputs.removeLast()
                            }
                            return
                        }
                        
                        guard let character = KeyCode.letter(for: event.keyCode) else { return }
                        
                        var keyKind: KeyInput.KeyKind = .notInWord
                        
                        if event.modifierFlags.contains(.shift) {
                            keyKind = .rightHere
                        } else if event.modifierFlags.contains(.option) {
                            keyKind = .inWordButNotHere
                        }
                        
                        keyInputs.append(KeyInput(char: character, kind: keyKind))
                    }
                )
                
            }
            
            Divider()
            
            ScrollView {
                LazyVGrid(columns: [.init(), .init(), .init(), .init(), .init()]) {
                    ForEach(results.flatMap {
                        Array($0)
                    }.map { (string: $0, id: UUID()) }, id: \.id) { result in
                        Text(result.string.uppercased())
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .padding()
                            .background(
                                Color("Grey")
                                    .aspectRatio(1, contentMode: .fill)
                            )
                    }
                }
            }
        }
        .padding()
        .onChange(of: keyInputs) { _ in
            updateResults()
        }
        .onAppear {
            updateResults()
        }
    }
    
    func updateResults() {
        
        guard keyInputs.count % 5 == 0 else { return }
        
        let charactersNotInside = keyInputs.filter {
            $0.kind == .notInWord
        }.map {
            $0.char
        }
        
        let charactersInside = keyInputs.enumerated().filter {
            $0.element.kind != .notInWord
        }
        
        withAnimation {
            results = words.filter { word in
                getScore(for: 0, word: word, charactersNotInside: charactersNotInside, charactersInside: charactersInside) &&
                getScore(for: 1, word: word, charactersNotInside: charactersNotInside, charactersInside: charactersInside) &&
                getScore(for: 2, word: word, charactersNotInside: charactersNotInside, charactersInside: charactersInside) &&
                getScore(for: 3, word: word, charactersNotInside: charactersNotInside, charactersInside: charactersInside) &&
                getScore(for: 4, word: word, charactersNotInside: charactersNotInside, charactersInside: charactersInside) &&
                checkAgain(targetWord: word, charactersInside: charactersInside)
            }
        }
    }
    
    func getScore(for characterIndex: Int, word: String, charactersNotInside: [Character], charactersInside: [(offset: Int, element: KeyInput)]) -> Bool {
        
        let sameColumn = charactersInside.filter {
            $0.offset % 5 == characterIndex
        }.map {
            $0.element
        }
        
        if let confirmedCharacter = sameColumn.first(where: {
            $0.kind == .rightHere
        }) {
            return Character(confirmedCharacter.char.lowercased()) == word[characterIndex]
        }
        
        if charactersNotInside.contains(where: {
            $0 == word[characterIndex]
        }) {
            return false
        }
        
        return true
    }
    
    func checkAgain(targetWord: String, charactersInside: [(offset: Int, element: KeyInput)]) -> Bool {
        charactersInside.allSatisfy { char in
            targetWord.contains(char.element.char)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension StringProtocol {
    subscript(offset: Int) -> Character { self[index(startIndex, offsetBy: offset)] }
    subscript(range: Range<Int>) -> SubSequence {
        let startIndex = index(self.startIndex, offsetBy: range.lowerBound)
        return self[startIndex..<index(startIndex, offsetBy: range.count)]
    }
    subscript(range: ClosedRange<Int>) -> SubSequence {
        let startIndex = index(self.startIndex, offsetBy: range.lowerBound)
        return self[startIndex..<index(startIndex, offsetBy: range.count)]
    }
    subscript(range: PartialRangeFrom<Int>) -> SubSequence { self[index(startIndex, offsetBy: range.lowerBound)...] }
    subscript(range: PartialRangeThrough<Int>) -> SubSequence { self[...index(startIndex, offsetBy: range.upperBound)] }
    subscript(range: PartialRangeUpTo<Int>) -> SubSequence { self[..<index(startIndex, offsetBy: range.upperBound)] }
}

