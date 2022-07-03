//
//  ContactViewController.swift
//  homework2
//
//  Created by macbook Denis on 03.07.2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    var name: String?
    var number: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = name {
            nicknameLabel.text = name
        }
        
        if let number = number {
            numberLabel.text = number
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
