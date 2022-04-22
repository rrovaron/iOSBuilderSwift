//
//  PizzaMaker.swift
//  Builder-iOS-Swift
//
//  Created by Rodrigo Rovaron on 17/03/22.
//

import Foundation

class PizzaMaker {
            
    func createCheesePizza(using builder: PizzaBuilder) -> Pizza {
        builder.setMeat(.beef)
        builder.addTopping([.cheese,
                            .olive,
                            .onion])
        builder.addSauce([.mayonnaise])
        
        return builder.build()
    }
    
    func createVegetarianPizza(using builder: PizzaBuilder) -> Pizza {
        builder.addTopping([.olive,
                            .onion,
                            .cheese,
                            .lettuce,
                            .tomato])
        builder.addSauce([.ketchup, .mayonnaise])
        return builder.build()
    }
}
