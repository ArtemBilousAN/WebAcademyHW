//
//  ThirdViewController.swift
//  3ViewName
//
//  Created by Artem Bilous on 06.10.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    var surName = ""
    var name = ""
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        surnameLabel.text = surName
        nameLabel.text = name
    }
    @IBAction func nextButtonAction(_ sender: UIButton) {
    }
    override func prepare(for nextButton: UIStoryboardSegue, sender: Any?) {
        guard nextButton.identifier == "goToFirstPage" else { return }
        guard let destination = nextButton.destination as? ViewController else { return }
        destination.hiddenStatusOfMainLabel = false
        destination.nameAndSurname = name + " " + surName
        // You can try if you want
        //destination.hiddenStatusOfNameTextField = true
        //destination.hiddenStatusOfNextButton = true
    }
    
    
}
