//
//  NoteDisplay.swift
//  Notes
//
//  Created by StudentAM on 4/8/24.
//

import SwiftUI

struct NoteDisplay: View {
    var title : String
    var content : String
    
    var body: some View {
        //display the content you entered
            VStack{
                Text("\(content)")
                  Spacer()
            }
            //makes the grey box and adds title 
            .padding()
            .navigationTitle(title)
            .frame(width: 350, alignment: .leading)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(10)
        
       
    }
}

#Preview {
    NoteDisplay(title: "", content: "")
}
