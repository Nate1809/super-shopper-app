// ShoppingItem.swift

import Foundation

class ShoppingItem: Identifiable, ObservableObject, Equatable, Hashable {
    let id = UUID()
    @Published var name: String
    @Published var quantity: Int

    init(name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }

    // Equatable Protocol
    static func == (lhs: ShoppingItem, rhs: ShoppingItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    // Hashable Protocol
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
