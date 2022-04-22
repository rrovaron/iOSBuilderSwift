//
//  ViewController.swift
//  Builder-iOS-Swift
//
//  Created by Rodrigo Rovaron on 26/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let pizzaBuilder = PizzaBuilder()
        let cheesePizza = PizzaMaker().createCheesePizza(using: pizzaBuilder)
        
        print(cheesePizza.description)
    }

}

