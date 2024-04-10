//
//  NoteTaker.swift
//  Notes
//
//  Created by StudentAM on 3/26/24.
//

import SwiftUI

struct NoteTaker: View {
    @State var input : String = ""
    @State var textStored : String = ""
    @Binding var notes : [Note]
    var body: some View {
        NavigationView{
            VStack {                
                TextField("Title...", text: $input)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(50)
                    .padding([.horizontal, .top ])
                    
                            

                TextEditor(text: $textStored)
                    .frame(height: 400)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .padding([.horizontal, .top ])
                    
                    

                Button(action: notary, label: {
                    Text("Add Note")
                        .foregroundStyle(Color.white)
                })
                .padding()
                .background(Color.blue)
                .cornerRadius(30)
                
            }
           
            . navigationTitle("New Note")
            
    }
    }
func notary(){
    
    let newNote = Note(title: input, content: textStored)
    notes.append(newNote)
}
}

#Preview {
    NoteTaker(notes:.constant([]))
}
