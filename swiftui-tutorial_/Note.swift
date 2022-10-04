//
//  Note.swift
//  swiftui-tutorial_
//
//  Created by Abdulaziz Albahar on 9/29/22.
//

import Foundation

class Note: ObservableObject {
    @Published var text : String = ""
    var id : Int = 0
    
    init(text: String, id: Int) {
        self.text = text
        self.id = id
    }
}
