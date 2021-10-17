//
//  ViewController.swift
//  3ViewName
//
//  Created by Artem Bilous on 04.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameAndSurnameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    var nameAndSurname: String? = ""
    var hiddenStatusOfMainLabel = true
    var hiddenStatusOfNameTextField = false
    var hiddenStatusOfNextButton = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameAndSurnameLabel.isHidden = hiddenStatusOfMainLabel
        nameAndSurnameLabel.text = nameAndSurname
        nameTextField.isHidden = hiddenStatusOfNameTextField
        nextButton.isHidden = hiddenStatusOfNextButton
    }

    @IBAction func nameTextFieldAction(_ sender: UITextField) {
    }
    @IBAction func nextButtonAction(_ sender: UIButton) {
    }
    override func prepare(for nextButton: UIStoryboardSegue, sender: Any?) {
            guard nextButton.identifier == "goToSecondPage" else { return }
            guard let destination = nextButton.destination as? SecondViewController else { return }
        if nameTextField.text != nil && nameTextField.text != "Твоё Имя" {
            guard let name = nameTextField.text else { return }
            destination.nameFromFirstPage = name
            }
        }
}

