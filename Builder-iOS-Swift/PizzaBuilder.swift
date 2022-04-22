//
//  PizzaBuilder.swift
//  Builder-iOS-Swift
//
//  Created by Rodrigo Rovaron on 29/03/22.
//

class PizzaBuilder {

    private(set) var meat: Meat = .beef
    private(set) var sauce: Sauce = []
    private(set) var topping: Topping = []
    
    func addSauce(_ sauce: Sauce) {
        self.sauce.insert(sauce)
    }
    
    func removeSauce(_ sauce: Sauce) {
        self.sauce.remove(sauce)
    }
    
    func addTopping(_ topping: Topping) {
        self.topping.insert(topping)
    }
    
    func removeTopping(_ topping: Topping) {
        self.topping.remove(topping)
    }
    func setMeat(_ meat: Meat) {
        self.meat = meat
    }
    
    public func build() -> Pizza {
        return Pizza(meat: meat,
                     sauce: sauce,
                     topping: topping)
    }
}
