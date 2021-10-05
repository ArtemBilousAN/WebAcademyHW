//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Artem Bilous on 27.09.2021.
//

import UIKit
// Есть констрены но не на всех девайсах коректно работают, лучше на айфоне 12 про макс
class ViewController: UIViewController {
    var milk = 300
    var water = 500
    var coffee = 350
    var garbage = 0
    
    @IBOutlet weak var labelForUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         labelForUser.text = "Choose a drink"
        
    }
    
    func makeDrink(drink: Drink) {
        coffee -= drink.coffeeNeeded
        water -= drink.waterNeeded
        milk -= drink.milkNeeded
    }
    func checkForCoffeeAvailability() {
        if coffee < 30 {
            labelForUser.text = "Add coffee, please"
        }
    }
    func checkForMilkAvailability() {
        if milk < 30 {
            labelForUser.text = "Add milk, please"
        }
    }
    func checkForWaterAvailability() {
        if water < 60 {
            labelForUser.text = "Add water, please"
        }
    }
    func checkForGarbageAvailability() {
        if garbage >= 15 {
            labelForUser.text = "Clean the machine"
        }
    }
    func checkForProductAvailability() {
        checkForWaterAvailability()
        checkForCoffeeAvailability()
        checkForMilkAvailability()
        checkForGarbageAvailability()
    }
    

    
    @IBAction func makeAmericanoButtonAction(_ sender: UIButton) {
        if water > 60 && coffee > 30 && milk > 30 && garbage < 15 {
            makeDrink(drink: .americano)
            labelForUser.text = "Your americano is ready"
            garbage += 1
            checkForProductAvailability()
        }
    }
    @IBAction func makeCappuchinoButtonAction(_ sender: UIButton) {
        if water > 60 && coffee > 30 && milk > 30 && garbage < 15 {
            makeDrink(drink: .cappuchino)
            labelForUser.text = "Your cappuchino is ready"
            garbage += 1
            checkForProductAvailability()
        }
    }
    @IBAction func makeLatteButtonAction(_ sender: UIButton) {
        if water > 60 && coffee > 30 && milk > 30 && garbage < 15 {
            makeDrink(drink: .latte)
            labelForUser.text = "Your latte is ready"
            garbage += 1
            checkForProductAvailability()
        }
    }
    
    @IBAction func addMilkButtonAction(_ sender: UIButton) {
        milk = 300
        labelForUser.text = "Milk added"
        checkForProductAvailability()
    }
    @IBAction func addWaterButtonAction(_ sender: UIButton) {
        water = 500
        labelForUser.text = "Water added"
        checkForProductAvailability()
    }
    @IBAction func addCoffeeButtonAction(_ sender: UIButton) {
        coffee = 350
        labelForUser.text = "Coffee added"
        checkForProductAvailability()
    }
    @IBAction func cleanTheMachineButtonAction(_ sender: Any) {
        garbage = 0
        labelForUser.text = "The machine cleaned"
        checkForProductAvailability()
    }
    
}

