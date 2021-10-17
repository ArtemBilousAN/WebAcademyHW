//
//  SecondViewController.swift
//  3ViewName
//
//  Created by Artem Bilous on 06.10.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    var nameFromFirstPage = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func surnameTextFieldAction(_ sender: UITextField) {
        
    }
    @IBAction func nextButtonAction(_ sender: UIButton) {
        }
    override func prepare(for nextButton: UIStoryboardSegue, sender: Any?) {
            guard nextButton.identifier == "goToThirdPage" else { return }
            guard let destination = nextButton.destination as? ThirdViewController else { return }
        if surnameTextField.text != nil,
           surnameTextField.text != "Твоя Фамилия",
           nameFromFirstPage != "" {
            guard let surname = surnameTextField.text else { return }
            destination.surName = surname
            destination.name = nameFromFirstPage
            }
        }

    
    
    
    
    
    }

