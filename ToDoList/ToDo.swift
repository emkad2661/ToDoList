//
//  ToDo.swift
//  ToDoList
//
//  Created by Faik Emre Kadısoyu on 2.04.2023.
//

import Foundation

struct ToDo: Identifiable {
    var id = UUID().uuidString
    var item: String = ""
    var reminderIsOn: Bool = false
    var dueDate: Date = Date.now + (60*60*24)
    var notes = ""
    var isCompleted = false
}
