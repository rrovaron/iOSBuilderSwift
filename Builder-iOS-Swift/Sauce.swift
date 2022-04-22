//
//  Sauce.swift
//  Builder-iOS-Swift
//
//  Created by Rodrigo Rovaron on 29/03/22.
//

struct Sauce: OptionSet {
    
    let rawValue: Int
    
    static let mayonnaise = Sauce(rawValue: 1 << 0)
    static let mustard = Sauce(rawValue: 1 << 1)
    static let ketchup = Sauce(rawValue: 1 << 2)
    static let barbeque = Sauce(rawValue: 1 << 3)
    
    init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

extension Sauce: CustomStringConvertible {
    
    static public var debugDescriptions: [(Self, String)] = [
        (.mayonnaise, "mayonnaise"),
        (.mustard, "mustard"),
        (.ketchup, "ketchup"),
        (.barbeque, "barbeque")
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
