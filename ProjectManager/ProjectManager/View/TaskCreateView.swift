//
//  TaskCreateView.swift
//  ProjectManager
//
//  Created by JeongTaek Han on 2022/03/09.
//

import SwiftUI

struct TaskCreateView: View {
    
    @EnvironmentObject var viewModel: ProjectManagerViewModel
    @Binding var isShowingSheet: Bool
    
    @State var title = String()
    @State var date = Date()
    @State var description = String()
    
    var body: some View {
        let taskForm = TaskFormView(title: $title, date: $date, description: $description)
        
        NavigationView {
            taskForm
                .padding()
                .navigationTitle("TODO")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            isShowingSheet.toggle()
                        }) {
                            Text("Cancel")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            viewModel.create(
                                title: taskForm.title,
                                description: taskForm.description,
                                dueDate: taskForm.date
                            )
                            isShowingSheet.toggle()
                        }) {
                            Text("Done")
                        }
                    }
                }
        }
        
    }
    
}
