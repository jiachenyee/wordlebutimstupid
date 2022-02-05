//
//  KeyboardView.swift
//  wordle but im stupid
//
//  Created by Jia Chen Yee on 5/2/22.
//

import Foundation
import SwiftUI

struct KeyAwareView: NSViewRepresentable {
    let onEvent: (NSEvent) -> Void
    
    func makeNSView(context: Context) -> NSView {
        let view = KeyView()
        view.onEvent = onEvent
        DispatchQueue.main.async {
            view.window?.makeFirstResponder(view)
        }
        return view
    }
    
    func updateNSView(_ nsView: NSView, context: Context) {}
}

private class KeyView: NSView {
    var onEvent: (NSEvent) -> Void = { _ in }
    
    override var acceptsFirstResponder: Bool { true }
    
    override func keyDown(with event: NSEvent) {
        onEvent(event)
    }
}
