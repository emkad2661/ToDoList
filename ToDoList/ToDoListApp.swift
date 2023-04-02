//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Faik Emre Kadısoyu on 1.04.2023.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var toDosVM = ToDosViewModel()
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .environmentObject(toDosVM)
        }
    }
}
