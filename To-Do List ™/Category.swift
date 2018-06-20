//
//  Category.swift
//  To-Do List ™
//
//  Created by x on 20/6/18.
//  Copyright © 2018 Beep Boop. All rights reserved.
//

import Foundation

class TaskCategory: Codable {
    var name: String
    var colorRed: Int
    var colorGreen: Int
    var colorBlue: Int
    
    init(name: String, colorRed: Int, colorGreen: Int, colorBlue: Int) {
        self.name = name
        self.colorRed = colorRed
        self.colorGreen = colorGreen
        self.colorBlue = colorBlue
    }
}
