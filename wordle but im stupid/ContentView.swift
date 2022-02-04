//
//  ContentView.swift
//  wordle but im stupid
//
//  Created by Jia Chen Yee on 4/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var charactersInside = ""
    @State var charactersNotInside = ""
    
    @State var confirmedCharOne = ""
    @State var confirmedCharTwo = ""
    @State var confirmedCharThree = ""
    @State var confirmedCharFour = ""
    @State var confirmedCharFive = ""
    
    
    @State var results: [String] = []
    
    var body: some View {
        VStack {
            TextField("Letters not inside", text: $charactersNotInside)
                .font(.system(.body, design: .monospaced))
            TextField("Letters inside", text: $charactersInside)
                .font(.system(.body, design: .monospaced))
            
            HStack {
                TextField("", text: $confirmedCharOne)
                    .multilineTextAlignment(.center)
                    .font(.system(.largeTitle, design: .monospaced))
                    .background(Color(.white).opacity(0.1))
                
                TextField("", text: $confirmedCharTwo)
                    .multilineTextAlignment(.center)
                    .font(.system(.largeTitle, design: .monospaced))
                    .background(Color(.white).opacity(0.1))
                
                TextField("", text: $confirmedCharThree)
                    .multilineTextAlignment(.center)
                    .font(.system(.largeTitle, design: .monospaced))
                    .background(Color(.white).opacity(0.1))
                
                TextField("", text: $confirmedCharFour)
                    .multilineTextAlignment(.center)
                    .font(.system(.largeTitle, design: .monospaced))
                    .background(Color(.white).opacity(0.1))
                
                TextField("", text: $confirmedCharFive)
                    .multilineTextAlignment(.center)
                    .font(.system(.largeTitle, design: .monospaced))
                    .background(Color(.white).opacity(0.1))
                
            }
            .textFieldStyle(.plain)
            
            List(results, id: \.self) { result in
                Text(result)
                    .kerning(5)
                    .font(.system(size: 20, weight: .medium, design: .monospaced))
                    .background(Color(.white).opacity(0.1))
            }
        }
        .padding()
        .onChange(of: charactersInside) { _ in
            updateResults()
        }
        .onChange(of: charactersNotInside) { _ in
            updateResults()
        }
        .onChange(of: confirmedCharOne) { _ in
            updateResults()
        }
        .onChange(of: confirmedCharTwo) { _ in
            updateResults()
        }
        .onChange(of: confirmedCharThree) { _ in
            updateResults()
        }
        .onChange(of: confirmedCharFour) { _ in
            updateResults()
        }
        .onChange(of: confirmedCharFive) { _ in
            updateResults()
        }
    }
    
    func updateResults() {
        results = words.filter { word in
            return getScore(for: 0, confirmedCharacter: confirmedCharOne, word: word) && getScore(for: 1, confirmedCharacter: confirmedCharTwo, word: word) && getScore(for: 2, confirmedCharacter: confirmedCharThree, word: word) && getScore(for: 3, confirmedCharacter: confirmedCharFour, word: word) && getScore(for: 4, confirmedCharacter: confirmedCharFive, word: word) && checkAgain(targetWord: word)
        }
    }
    
    func getScore(for characterIndex: Int, confirmedCharacter: String, word: String) -> Bool {
        if confirmedCharacter.isEmpty {
            if charactersNotInside.lowercased().contains(word[characterIndex]) {
                return false
            } else if charactersInside.lowercased().contains(word[characterIndex]) {
                return true
            }
        } else {
            if Character(confirmedCharacter.lowercased()) == word[characterIndex] {
                return true
            } else {
                return false
            }
        }
        return true
    }
    
    func checkAgain(targetWord: String) -> Bool {
        return charactersInside.allSatisfy { char in
            targetWord.contains(char.lowercased())
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

