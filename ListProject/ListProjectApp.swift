//
//  ListProjectApp.swift
//  ListProject
//
//  Created by Alvin Tu on 3/8/21.
//

import SwiftUI

@main
struct ListProjectApp: App {
    
    @StateObject var todoManager = TodoListManager(isForTest: false)
    var body: some Scene {
        WindowGroup {
            TodoListView(todoManager: todoManager)
        }
    }
}
