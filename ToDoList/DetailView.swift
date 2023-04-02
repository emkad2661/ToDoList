//
//  DetailView.swift
//  ToDoList
//
//  Created by Faik Emre Kadısoyu on 1.04.2023.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var toDosVM: ToDosViewModel
    @State var toDo: ToDo
    var newToDo = false
   
    var body: some View {
        NavigationStack {
            List {
                TextField("Enter To Do here", text: $toDo.item)
                    .font(.title2)
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                    .listRowSeparator(.hidden)
                
                
                Toggle("Set Reminder:", isOn: $toDo.reminderIsOn)
                    .padding(.top)
                    .listRowSeparator(.hidden)
                DatePicker("Date", selection: $toDo.dueDate)
                    .listRowSeparator(.hidden)
                    .padding(.bottom)
                    .disabled(!toDo.reminderIsOn)
                
                Text("Notes")
                    .padding(.top)
                
                TextField("Notes", text: $toDo.notes, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .listRowSeparator(.hidden)
                
                Toggle("Completed:", isOn: $toDo.isCompleted)
                    .padding(.top)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        //TODO: Add Save code here
                        if newToDo {
                            toDosVM.toDos.append(toDo)
                            dismiss()
                        }
                    }
                }

            }
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(toDo: ToDo())
                .environmentObject(ToDosViewModel())
        }
    }
}
