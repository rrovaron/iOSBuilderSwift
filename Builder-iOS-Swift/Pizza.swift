//
//  Pizza.swift
//  Builder-iOS-Swift
//
//  Created by Rodrigo Rovaron on 29/03/22.
//

public struct Pizza {
    let meat: Meat
    let sauce: Sauce
    let topping: Topping
}

extension Pizza: CustomStringConvertible {
    public var description: String {
        return ("Here is your pizza. It has \(meat.rawValue) as meat; \(sauce.description) as sauce; and \(topping.description) as topping in it. Bon Appetit!")
    }
}
