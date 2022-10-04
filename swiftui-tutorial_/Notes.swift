//
//  Notes.swift
//  swiftui-tutorial_
//
//  Created by Abdulaziz Albahar on 9/29/22.
//

import Foundation

class Notes: ObservableObject {
    @Published var notes: [Note] = []
    
    func append(text: String) {
        notes.append(Note(text: text, id: notes.count+1))
    }
}
