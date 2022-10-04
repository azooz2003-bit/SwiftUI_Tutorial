//
//  ContentView.swift
//  swiftui-tutorial_
//
//  Created by Abdulaziz Albahar on 9/29/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var newNote = ""
    @ObservedObject var notes = Notes()
    @State var isEmpty = false
    
    var body: some View {
        VStack {
            Text("Notes App").bold().font(.system(size: 40, weight: .bold, design: .monospaced))
            ScrollView {
                ForEach(notes.notes, id: \.self.id) { note in
                    Card(textToDisplay: note.text)
                }
            }
            
            HStack {
                TextField("Enter note", text: $newNote).padding().frame(height: 50, alignment: .leading).background(.yellow).cornerRadius(7).padding().foregroundColor(.white)
                
                Button (action: {
                    if (newNote.isEmpty) {
                        isEmpty = true
                    } else {
                        notes.append(text: newNote)
                        newNote = ""
                    }
                }) {
                    Label("", systemImage: "plus.circle.fill").font(.system(size: 45)).foregroundColor(.yellow)
                }.padding(.trailing).alert("Empty note, please try again.", isPresented: $isEmpty) {
                    Button("Ok", role: .cancel) {
                        isEmpty = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
