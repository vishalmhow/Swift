import UIKit

// Declare a Protocol

protocol Collectable {
    var name: String { get } // Read Only
    var price: Int { get set }
    
    // Initialize a protocol
    init(withName: String, startingPrice: Int)
    
    func collect() -> Bool
}

// Extending Protocol
extension Collectable {
    var increasePrice: Int {
        return self.price * 5
    }
    init(name: String) {
        self.init(withName: name, startingPrice: 100)
    }
    // Dafault Implementation of Collect function
    func collect() -> Bool {
        print("Default item couldn't be collected")
        return false
    }
}

protocol Usable {
    func use()
}

// Protocol adoption
class Item: Collectable, Usable {
    var name: String
    var price: Int
    
    required init(withName: String, startingPrice: Int) {
        self.name = withName
        self.price = startingPrice
    }
    
    func collect() -> Bool {
        print("Item Collected!")
        return true
    }
    
    func use() {
        print("Item Used!")
    }
}

let item = Item(withName: "Test Item", startingPrice: 25)
item.collect()
item.use()

let antidote = Item(name: "Antidote")
antidote.price
