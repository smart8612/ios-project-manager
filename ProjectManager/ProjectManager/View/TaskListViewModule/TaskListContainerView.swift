//
//  TaskListContainerView.swift
//  ProjectManager
//
//  Created by JeongTaek Han on 2022/03/08.
//

import SwiftUI

struct TaskListContainerView: View {
    
    let taskType: TaskStatus
    
    @EnvironmentObject private var viewModel: ProjectManagerViewModel
    
    @State private var isShowSheet = false
    @Binding var isShowAlert: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            TaskListTitleView(taskType: taskType)
            TaskListView(taskType: taskType, isShowSheet: $isShowSheet, isShowAlert: $isShowAlert)
        }
    }
    
}
