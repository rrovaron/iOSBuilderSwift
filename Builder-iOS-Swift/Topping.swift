//
//  Topping.swift
//  Builder-iOS-Swift
//
//  Created by Rodrigo Rovaron on 29/03/22.
//

public struct Topping: OptionSet {
    public let rawValue: Int
    
    public static let cheese = Topping(rawValue: 1 << 0)
    public static let onion = Topping(rawValue: 1 << 1)
    public static let lettuce = Topping(rawValue: 1 << 2)
    public static let olive = Topping(rawValue: 1 << 3)
    public static let tomato = Topping(rawValue: 1 << 4)
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

extension Topping: CustomStringConvertible {
    
    static public var debugDescriptions: [(Self, String)] = [
        (.cheese, "cheese"),
        (.onion, "onion"),
        (.lettuce, "lettuce"),
        (.olive, "olive"),
        (.tomato, "tomato")
    ]
    
    public var description: String {
        let result: [String] = Self.debugDescriptions.filter {
            contains($0.0)
        }.map {
            $0.1
        }
        
        let printable = result.joined(separator: ", ")
        
        return "\(printable)"
    }
}
