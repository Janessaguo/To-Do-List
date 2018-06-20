//
//  Task.swift
//  To-Do List ™
//
//  Created by x on 20/6/18.
//  Copyright © 2018 Beep Boop. All rights reserved.
//

import Foundation

class Task: Codable {
    var title: String
    var description: String
    var dueDate: String
    var category: TaskCategory
    
    init(title: String, description: String, dueDate: String, category: TaskCategory) {
        self.title = title
        self.description = description
        self.dueDate = dueDate
        self.category = category
    }
}
