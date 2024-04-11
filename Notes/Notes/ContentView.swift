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
                VStack{
                    List{
                        //                    Spacer()
                        ForEach(notess.indices, id:\.self){ index in
                            //                      var titulo : String = "\(notess[index].title)"
                            //                      var contenido : String = "\(notess[index].content)"
                            NavigationLink(destination: NoteDisplay(title: notess[index].title, content: notess[index].content), label: {
                                VStack{
                                    Text ("\(notess[index].title)")
                                        .bold()
                                    Text ("\(notess[index].content)")
                                }
                            })
                            
                            
                            
                        }
                        
                    }
                    .padding()
                    

                }
                .padding()
                .frame(width: 350, alignment: .leading)
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                
               
                
               
                
                NavigationLink(destination: NoteTaker(notes: $notess), label:{
                    Text("Add Task")
                        .frame(width:400 , height:100)
                        .foregroundStyle(Color.white)
                        .background(Color.blue)
                        .font(.system(size: 20))
                        .cornerRadius(10)               //Comment this line out
                       
                })
            
                
                .navigationTitle("Notes")
                .ignoresSafeArea()                  //Comment this line out
                .border(Color.black)                //Comment this line out
                
                
            }
            
            
    }
    }
}

#Preview {
    ContentView()
}
