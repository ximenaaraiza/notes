//
//  ContentView.swift
//  Notes
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI
// create  struct in order to hold title and content together
struct Note{
    var title: String
    var content: String
}

struct ContentView: View {
    //array where very note so its title with matching content
    @State var notess: [Note] = []

var body: some View {
    //Makes it so that the titles can be in the upper left
    NavigationView{
        //allows for things to stacj vertically
            VStack {
                VStack{
                    List{
                        //for every note that is added so every title and content that is stored a nav link is made on the home page when you click on it it will take you to a page with the note
                        ForEach(notess.indices, id:\.self){ index in
                           
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
                
               
                
               //button which will take you to page that can fill in title and content
                
                NavigationLink(destination: NoteTaker(notes: $notess), label:{
                    Text("Add Task")
                        .frame(width:400 , height:70)
                        .foregroundStyle(Color.white)
                        .background(Color.blue)
                        .font(.system(size: 20))

                       
                })
            //title 
                
                .navigationTitle("Notes")
                
                
            }
            
            
    }
    }
}

#Preview {
    ContentView()
}
