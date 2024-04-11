//
//  NoteTaker.swift
//  Notes
//
//  Created by StudentAM on 3/26/24.
//

import SwiftUI

struct NoteTaker: View {
    //where title and content will be stored
    @State var input : String = ""
    @State var textStored : String = ""
    //the binding will make it so where ever you change this it will change in all the pages , so when you add text for title and content it will update the array in the first page to display the note
    @Binding var notes : [Note]
    var body: some View {
//for verticle sorting
            VStack {
                //where text is typed for title the text will be stored in input
                TextField("Title...", text: $input)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(50)
                    .padding([.horizontal, .top ])
                    
                            
// where you add the actual note and it gets stored in text stored variable
                TextEditor(text: $textStored)
                    .frame(height: 500)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .padding([.horizontal, .top ])
                    
                    
                // button to add note to the first page so this runs the notary func
                Button(action: notary, label: {
                    Text("Add Note")
                        .foregroundStyle(Color.white)
                })
                .padding()
                .background(Color.blue)
                .cornerRadius(30)
                
            }
            .navigationTitle("Add a note")
            

    }
func notary(){
    //notary func adds everything into the array in roder yo display it stores input in title, and content in text strored 
    let newNote = Note(title: input, content: textStored)
    notes.append(newNote)
}
}

#Preview {
    NoteTaker(notes:.constant([]))
}
