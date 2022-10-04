//
//  Card.swift
//  swiftui-tutorial_
//
//  Created by Abdulaziz Albahar on 9/29/22.
//

import SwiftUI

struct Card: View {
    var textToDisplay: String = ""
    
    init(textToDisplay: String) {
        self.textToDisplay = textToDisplay
    }
    var body: some View {
        Text(textToDisplay).frame(width: 300, alignment: .center).padding().background(.yellow).cornerRadius(7).foregroundColor(.white)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(textToDisplay: "grog4xwqx")
    }
}
