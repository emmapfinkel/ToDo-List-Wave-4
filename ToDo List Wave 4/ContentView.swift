//
//  ContentView.swift
//  ToDo List Wave 4
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var toDoItems : [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
       
        VStack {
            
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                }
                .font(.title)
            }
            Spacer()
            
            .padding()
          
        }
        .padding()
        
        List {
            
            ForEach (toDoItems) { toDoItem in 
            
                if toDoItem.isImportant == true {
                    Text("!! " + toDoItem.title)
                }
                else {
                    Text(toDoItem.title)
                }
            }

        }
        .listStyle(.plain)
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
