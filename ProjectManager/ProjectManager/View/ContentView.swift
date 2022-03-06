//
//  ContentView.swift
//  ProjectManager
//
//  Created by JeongTaek Han on 2022/02/28.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            HStack {
                Text("Hello World")
            }
            .navigationTitle("Project Manager")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
