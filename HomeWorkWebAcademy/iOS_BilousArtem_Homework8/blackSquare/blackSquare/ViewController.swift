//
//  ViewController.swift
//  blackSquare
//
//  Created by Artem Bilous on 17.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var blackSquareUIView: UIView!
    @IBOutlet weak var blackSquareLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var blackSquareBottomConstraint: NSLayoutConstraint!
    
    var countOfTaps: Int = 0
    var textForCountLabel = "Count of taps = 0"
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewWidth = self.view.frame.size.width
        let viewHeight = self.view.frame.size.height
        print(viewWidth/2)
        print(viewHeight/2)
        blackSquareLeadingConstraint.constant = viewWidth/2 - 50
        blackSquareBottomConstraint.constant = viewHeight/2 - 144
        countLabel.text = textForCountLabel
    }
    @IBAction func BlackSquareTapAction(_ sender: UITapGestureRecognizer) {
        countOfTaps += 1
        textForCountLabel = "Count of taps = \(countOfTaps)"
        countLabel.text = textForCountLabel
        let viewWidth = self.view.frame.size.width
        let viewHeight = self.view.frame.size.height
        let numberForWidth = Int.random(in: 0...Int(viewWidth) - 100)
        let numberForHeight = Int.random(in: 0...Int(viewHeight) - 244)
        blackSquareLeadingConstraint.constant = CGFloat(numberForWidth)
        blackSquareBottomConstraint.constant = CGFloat(numberForHeight)
    }
    


}

