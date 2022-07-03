//
//  ViewController.swift
//  homework2
//
//  Created by macbook Denis on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelLabel: UILabel!
    @IBOutlet weak var usernamePhoneField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usernamePhoneField.placeholder = "Enter your number"
        labelLabel.isHidden = true
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        guard let usernameNumber = usernamePhoneField.text else {return}
        if usernameNumber.count == 11 {
            if usernameNumber.starts(with: "89087") {
                guard let unlockVC = storyboard?.instantiateViewController(withIdentifier: "ContactTableViewController") else {return}
                navigationController?.pushViewController(unlockVC, animated: true)
                
            }
        } else {
            guard let LockedVC = storyboard?.instantiateViewController(withIdentifier: "LockedViewController") else {return}
            present(LockedVC, animated: true)
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        usernamePhoneField.text = nil
            
    }
}

