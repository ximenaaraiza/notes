//
//  ContentView.swift
//  Notes
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct Note{
    var title: String
    var content: String
}

struct ContentView: View {
    @State var notess: [Note] = []

var body: some View {
    NavigationView{
            VStack {
                List{
//                    Spacer()
                    ForEach(notess.indices, id:\.self){ index in
                        NavigationLink(destination: NoteDisplay(), label: {
                            VStack{
                                Text ("\(notess[index].title)")
                                Text ("\(notess[index].content)")
                            }
                        })
                        
                  
                        
                    }
                    
                }
                .padding()

                
                NavigationLink(destination: NoteTaker(notes: $notess), label:{
                    Text("Add Task")
                        .frame(width:400 , height:100)
                        .foregroundStyle(Color.white)
                        .background(Color.blue)
                        .font(.system(size: 20))
                        .cornerRadius(10)
                       
                })
//                .position(x:195, y:320)
                

                
            }
            
            .navigationTitle("Notes")
            
    }
    }
}

#Preview {
    ContentView()
}
