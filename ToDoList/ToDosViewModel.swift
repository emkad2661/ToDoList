//
//  ToDosViewModel.swift
//  ToDoList
//
//  Created by Faik Emre Kadısoyu on 2.04.2023.
//

import Foundation

class ToDosViewModel: ObservableObject {
    @Published var toDos: [ToDo] = []
    
    init() {
        toDos.append(ToDo(item: "Learn Swift"))
        toDos.append(ToDo(item: "Build Apps"))
        toDos.append(ToDo(item: "Change the World"))
    }
}
