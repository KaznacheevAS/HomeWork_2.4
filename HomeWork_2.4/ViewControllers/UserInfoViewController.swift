//
//  UserInfoViewController.swift
//  HomeWork_2.4
//
//  Created by Kaznacheev on 19.11.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var contentTV: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contentTV.text = user.person.content
    }
}
