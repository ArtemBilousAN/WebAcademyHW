//
//  ViewController.swift
//  tableViewHomeWork
//
//  Created by Artem Bilous on 18.10.2021.
//

import UIKit
var number: Int = 0
class ViewController: UIViewController {
    var array: [String] = ["Artem Velkyy", "Artem Bilous", "Dmitriy Paliienko", "Eugene Vlasov", "Iryna Forkaliuk", "Anton Ivchenko", "Petro Starichok", "Sergiy Pankiv", "Nikita Nikita", "Valerii Syroiezhin", "Valentina Mihova", "Victor Mandryk", "Artem Zosyuk"]
    @IBOutlet weak var tableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "indexPathCell", for: indexPath)
        if number < 13 {
            cell.textLabel?.text = array[number]
            number += 1
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "My colleagues"
    }
}
