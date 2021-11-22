//
//  WelcomViewController.swift
//  HomeWork_2.4
//
//  Created by Kaznacheev on 15.11.2021.
//

import UIKit

class WelcomViewController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = user.person.descriptor
    }

}
