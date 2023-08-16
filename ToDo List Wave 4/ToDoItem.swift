//
//  ToDoItem.swift
//  ToDo List Wave 4
//
//  Created by scholar on 7/27/23.
//

import Foundation

class ToDoItem: Identifiable {
    
    var id = UUID()
    
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
    
}
