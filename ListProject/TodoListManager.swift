//
//  TodoListManager.swift
//  ListProject
//
//  Created by Alvin Tu on 3/10/21.
//

import Foundation

class TodoListManager: ObservableObject {
    
    @Published var items: [Item] =  [Item(id: UUID(), name: "first"), Item(id: UUID(), name: "second"), Item(id: UUID(), name: "third")]
    
    init(isForTest: Bool) {
        
        //get data and set to my array
    }
    
    func move(indices: IndexSet, newOffset:Int) {

        items.move(fromOffsets: indices, toOffset: newOffset)

}
    
    func addItem() {
        items.append(Item(id: UUID(), name: "newly added"))
    
    }
    
    func delete(at indexSet: IndexSet) {
        for index in indexSet {
            items.remove(at:index)
        }
    }
    
    static func emptyState() -> TodoListManager {
        let manager = TodoListManager(isForTest: true)
        manager.items = []
        return manager
    }
    
    static func fullState() -> TodoListManager {
        let manager = TodoListManager(isForTest: false)
        manager.items = [Item(id: UUID(), name: "first"), Item(id: UUID(), name: "second"), Item(id: UUID(), name: "third")]
        return manager
    }
    
    
}
