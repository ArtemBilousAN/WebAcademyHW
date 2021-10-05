//
//  CoffeType.swift
//  CoffeeMachine
//
//  Created by Artem Bilous on 30.09.2021.
//

import UIKit

enum Drink {
    case americano, latte, cappuchino
    
    var coffeeNeeded: Int {
        switch self {
        case .americano:
            return 30
        case .cappuchino:
            return 30
        case .latte:
            return 30
        }
    }
    var waterNeeded: Int {
        switch self {
        case .americano:
            return 60
        case .cappuchino:
            return 25
        case .latte:
            return 20
        }
    }
    var milkNeeded: Int {
        switch self {
        case .americano:
            return 0
        case .cappuchino:
            return 25
        case.latte:
            return 30
        }
    }
}


