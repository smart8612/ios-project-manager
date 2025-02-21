//
//  TaskListContextMenuView.swift
//  ProjectManager
//
//  Created by JeongTaek Han on 2022/03/10.
//

import SwiftUI

struct TaskListContextMenuView: View {
    
    let task: Task
    
    @EnvironmentObject private var viewModel: ProjectManagerViewModel
    
    @Binding var isShowAlert: Bool
    
    var body: some View {
        ForEach(TaskStatus.allCases) { status in
            if status != task.status {
                Button(action: {
                    do {
                        try viewModel.update(task, taskStatus: status)
                    } catch {
                        isShowAlert.toggle()
                    }
                }) {
                    Text("Move to \(status.description)")
                }
            }
        }
    }
    
}
